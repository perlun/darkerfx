# darkerfx - A dark theme for DocFX!

A dark template for documentation generated with [DocFX](https://dotnet.github.io/docfx/).

The theme is created as an override of the default template, so both `default` and `darkerfx` needs to be enabled in `docfx.json`

## Live Demo
You can view a demo DocFX project with this template [HERE](https://perlun.github.io/darkerfx/).

## Install

1. Download the source or the zipped file from the [releases](https://github.com/perlun/darkerfx/releases).
2. Create a `templates` folder in the root of your DocFX directory.
3. Copy the `darkerfx` folder to the `templates` folder.
4. Update the `docfx.json` configuration to include the `darkerfx` template:
    ```json
    {
        "template": [
            "default",
            "templates/darkerfx"
        ],
    }
    ```

## Acknowledgement
The theme is based on the great [darkFX](https://github.com/steffen-wilke/darkfx) theme by Steffen Wilke. Many thanks to you!

darkFX in turn has the following acknowledgement: Many thanks to [Oscar Vásquez](https://github.com/ovasquez) from which I borrowed the example pages and repository structure of his [Material Theme for DocFX](https://github.com/ovasquez/docfx-material).
