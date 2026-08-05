# openscad-nature-kit

A collection of individual, parametric 3D models representing various elements of a meadow ecosystem. 

Since these models are not combined into a single collage, each asset is provided as a standalone `.scad` file. You can use them individually or import them into your own scenes for custom arrangements.

## Included Elements

*   `clover.scad` - A detailed clover leaf/plant.
*   `daisy.scad` - A classic daisy flower.
*   `aphid.scad` - A tiny aphid insect model.
*   `aphid_on_clover.scad` - A combined scene featuring an aphid sitting on a clover.
*   `bee.scad` - A stylized honeybee.
*   `meadow_flower.scad` - A generic wild meadow flower.
*   `grass.scad` - Individual blades of grass to build a lawn or field.

## How to Use

1. **Download the files:** Clone this repository or download the specific `.scad` file you need.
2. **Open in OpenSCAD:** Load any file directly into OpenSCAD to render or modify it.
3. **Combine elements:** You can easily import these models into your own main project file using the `use` or `include` commands:


## Customizing

At the very bottom of each file (except for the grass), you will find the module name followed by parentheses and a semicolon. If you want to scale the model, apply the `scale()` command directly before the module call:

// This will double the size of the model:
scale(2)
bee(); 


You can look up further transformations and commands in the official [OpenSCAD Cheat Sheet](https://openscad.org).
