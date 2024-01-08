# DITA Bootstrap Extension

<a href="https://www.dita-ot.org"><img src="https://www.dita-ot.org/images/dita-ot-logo.svg" align="right" height="55"></a>

_DITA Bootstrap Extension_ is a [DITA Open Toolkit plug-in](https://www.dita-ot.org/plugins) that extends the [DITA Bootstrap](https://infotexture.github.io/dita-bootstrap/) HTML output with additional features from the [Bootstrap Extension](https://bootstrapextensions.com) library.

<!-- MarkdownTOC levels="2,3" -->

- [Installation](#installation)
  - [Installing DITA-OT](#installing-dita-ot)
  - [Installing the Plug-in](#installing-the-plug-in)
- [Using](#using)
  - [Common Bootstrap utility classes](#common-bootstrap-utility-classes)
  - [Optional elements](#optional-elements)
- [License](#license)

<!-- /MarkdownTOC -->

## Installation

The _DITA Bootstrap Extension_ plug-in has been tested with [DITA-OT 4.x](https://www.dita-ot.org/download). Use the latest version for best results.

### Installing DITA-OT

1.  Download the latest distribution package from the project website at
    [dita-ot.org/download](https://www.dita-ot.org/download).
2.  Extract the contents of the package to the directory where you want to install DITA-OT.
3.  **Optional**: Add the absolute path for the `bin` directory to the _PATH_ system variable.

    This defines the necessary environment variable to run the `dita` command from the command line.

See the [DITA-OT documentation](https://www.dita-ot.org/dev/topics/installing-client.html) for detailed installation instructions.

### Installing the Plug-in

- Run the plug-in installation commands:

```console
dita install fox.jason.extend.css
dita install dita-bootstrap
dita install https://github.com/infotexture/dita-bootstrap.extension/archive/develop.zip
```

## Using

Specify the `html5-bootstrap` format when building output with the `dita` command:

```console
dita --input=path/to/your.ditamap \
     --format=html5-bootstrap
```

### Common Bootstrap utility classes

The HTML output for the following DITA elements can be annotated with common Bootstrap utility classes for borders, background, text, spacing, etc. using additional command line parameters:

- `bootstrap.css.to-top` – common Bootstrap utility classes for the to top button

### Optional elements

opt-in to-top-button can be included with the following parameter

- `to-top.include` – add Bootstrap to-top button

## License

[Apache 2.0](LICENSE) © 2024 Jason Fox

The generated HTML created by this software includes the following additional software components which are obtained under license:

- Bootstrap Extension – https://github.com/slackero/bootstrap-extension – **MIT license**

Within the documentation, where necessary, the texts describing the Bootstrap Extension usage of each component have been copied directly from the [Bootstrap Extension documentation](https://bootstrapextensions.com/) however DITA markup is used throughout the examples describing how to implement these components correctly using `outputclass`. The text is therefore a derivative of "Bootstrap Extension docs" by AKK IT, Inc, and used under MIT.
