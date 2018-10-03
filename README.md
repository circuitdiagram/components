# [Circuit Diagram](http://www.circuit-diagram.org/) Components

[![Build status](https://ci.appveyor.com/api/projects/status/5udo733v1fnn0pi8/branch/master?svg=true)](https://ci.appveyor.com/project/CircuitDiagram/components/branch/master)

This repository contains components created by users of Circuit Diagram.

You can browse the full range of components and see what they look like when used in circuits on the [Circuit Diagram Website](http://www.circuit-diagram.org/components).

## Contributing New Components

Please submit pull requests to this repository with new components you have created.

You can create new components using either:

- [Component Editor](), an online tool for creating components, or
- The Visual Studio Code [extension](https://github.com/circuitdiagram/circuitdiagram-vscode)

The Component Editor website contains [documentation](https://componenteditor.com/help/) to get started making components.

### Where to put your component

If your component is an alternative design for an existing component, place it in
the same top-level folder as the original component. For example, the `us_resistor` component is an alternative design for the `resistor` component. They are both in the `/common` folder of this repository.

If there is no existing component similar to the one you have made, place it in the
folder that seems most appropriate.

### Style & Guidelines

- XML should be indented using two spaces
- The component must have a unique GUID
- The component file name should be the same as the component name with special characters
replaced by an underscore - e.g. `Counter (4 bit)` -> `counter_4_bit.xml`
- The XML file should be placed in a folder of the same name, without the `.xml` extension
- If you include an `author` tag in your component, it should be your GitHub username

### Icons

Optionally, you can include icons for your component. These should use the existing SVG template and consist of a single `<path>` element.

If you include a single icon, it should be named the same as the `xml` file but with an `svg` extension.

If you include an icon for each component configuration, they must be named `{component}--{configuration}.svg`.

## Component Usage

Components in this repository are automatically included on the Circuit Diagram Website. By making a pull request, you agree to your components being available to use on the Circuit Diagram website.
