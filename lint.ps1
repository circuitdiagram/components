$script:exit = 0

Get-ChildItem . -Recurse -Filter *.xml | Foreach-Object {
    $content = Get-Content $_.FullName

    if ($content -match "\t") {
        $script:exit = 1
        Write-Output "[ERROR] Indented with tabs: $($_.FullName)"
    }
}

[xml]$manifest = Get-Content "build/manifest.xml"

$inputs = @()
foreach ($component in $manifest.components.component)
{
    $inputs += [Tuple]::Create($component.input, $component.guid)

    foreach ($configuration in $component.configuration)
    {
        if ($configuration.guid)
        {
            $inputs += [Tuple]::Create($configuration.input, $configuration.guid)
        }
    }
}

# Check for duplicate GUIDs
$duplicateGuids = $inputs | Group-Object -Property Item2 | Where-Object{$_.count -gt 1}
if ($duplicateGuids)
{
    foreach ($duplicate in $duplicateGuids)
    {
        Write-Output "[ERROR] Duplicate GUID $($duplicate.name) found in:"
        foreach ($input in $duplicate.Group)
        {
            Write-Output "  $($input.Item1)"
        }
        Write-Output ""
    }

    $script:exit = 1
}

# Check file names
$invalidFileNames = $inputs | Where-Object{$_.Item1 -cnotmatch "^[a-z0-9\/\._]+$"}
if ($invalidFileNames)
{
    Write-Output "File names must be lowercase alphanumeric with underscores."

    foreach ($invalidFileName in $invalidFileNames)
    {
        Write-Output "[ERROR] Invalid file name: $($invalidFileName.Item1)"
    }
    Write-Output ""

    $script:exit = 1
}

if (!$script:exit)
{
    Write-Output "All components pass linting."
}

exit $script:exit
