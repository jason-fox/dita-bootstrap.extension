# DITA Bootstrap Extension

<a href="https://www.dita-ot.org"><img src="https://www.dita-ot.org/images/dita-ot-logo.svg" align="right" height="55"></a>

Incorporate the Bootstrap Extension as a separate plugin to add everything that may be useful but missing from  Bootstrap 5.x.
as a DITA-OT Plugin.

<!-- MarkdownTOC levels="2,3" -->

- [Installation](#installation)
  - [Installing DITA-OT](#installing-dita-ot)
  - [Installing the Plug-in](#installing-the-plug-in)
- [Usage](#usage)
- [License](#license)

<!-- /MarkdownTOC -->

## Installation

The _DITA Bootstrap CSS Theme Switcher_ plug-in has been tested with [DITA-OT 4.x](http://www.dita-ot.org/download). Use the latest version for best results.

### Installing DITA-OT

1.  Download the latest distribution package from the project website at
    [dita-ot.org/download](https://www.dita-ot.org/download).
2.  Extract the contents of the package to the directory where you want to install DITA-OT.
3.  **Optional**: Add the absolute path for the `bin` directory to the _PATH_ system variable.

    This defines the necessary environment variable to run the `dita` command from the command line.

See the [DITA-OT documentation](https://www.dita-ot.org/4.0/topics/installing-client.html) for detailed installation instructions.

### Installing the Plug-in

- Run the plug-in installation commands:

```console
dita install fox.jason.extend.css
dita install dita-bootstrap
dita install https://github.com/jason-fox/dita-bootstrap/archive/master.zip
```


## License

[Apache 2.0](LICENSE) © 2024 Jason Fox

