# [Circuit Diagram](http://www.circuit-diagram.org/) Components

[![Build status](https://ci.appveyor.com/api/projects/status/5udo733v1fnn0pi8/branch/master?svg=true)](https://ci.appveyor.com/project/CircuitDiagram/components/branch/master)

This repository contains components created by users of Circuit Diagram.

## Custom Components

Create your own components for those not included by default using a simple XML format.

Use the online [component editor](http://componenteditor.com/) and find [components others have made](http://www.circuit-diagram.org/components).

## Contributing

Please make pull requests to this repository with components you have designed. Please ensure it:

- Is placed in the appropriate category
- Is formatted as XML indented with two spaces
- Includes the following metadata tags:
  - name
  - version
  - author
  - guid (which *must be unique*)
  - description

## Icons

- You can provide a default SVG icon, and one icon for each configuration apart from the default configuration
  - For example, the *meter* component has two configurations: voltmeter and ammeter
  - It has a default icon at `Icons/Sensors/meter.svg` which is used for the voltmeter configuration
  - It has an additional icon at `Icons/Sensors/meter_ammeter.svg` for the ammeter configuration
- The SVG icon should have dimensions 32x32
