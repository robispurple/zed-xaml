# XAML Language Support for Zed

Temporary XAML file support until a dedicated XAML tree‑sitter grammar is developed. Provides basic syntax highlighting, indentation, and language configuration for XAML files in the [Zed](https://zed.dev) editor.

## Overview

- **Grammar** – Uses the `tree-sitter-xml` grammar (currently the best available for XAML). The grammar is bundled under `languages/xaml/grammars.xml` and automatically linked by Zed.
- **High‑lighting** – `highlights.scm` contains custom rules that extend the base XML syntax to give XAML‑specific syntax highlighting: directives (e.g. `x:Key`), attached properties (`Grid.Row`), markup extensions (`{Binding}`), namespace declarations, etc.
- **Indentation** – `indents.scm` (not shown here) follows the usual XML rules but adds a few small rules to handle `x:Name` and self‑closing tags.
- **File recognition** – `config.toml` registers the grammar for any file ending with `.xaml` and also recognises files that start with typical XAML root elements such as `<Window>` or `<Page>`.
- **Prettier support** – XAML is treated as plain XML for formatting.

## Installation

1. Open Zed.
1. Press `Ctrl+Shift+X` (or `Cmd+Shift+X` on macOS).
1. Search for `XAML` in the extensions list.
1. Click `Install` button.

## Usage

Open any `.xaml` file or a file that starts with a recognised XAML root element. Zed will automatically:
- Syntax‑highlight the file using the rules in `languages/xaml/highlights.scm`.
- Provide indentation that matches the XML tree.
- Use the built‑in XML formatter via Prettier.

### Examples

The `test/` directory contains a set of sample XAML files that demonstrate the extension’s capabilities:

- `example-wpf.xaml` – Classic WPF layout.
- `example-uwp.xaml` – UWP XAML.
- `example-winui3.xaml` – WinUI 3.
- `example-maui.xaml` – .NET MAUI.
- `example-xamarin.forms.xaml` – Xamarin.Forms.
- `example-minimal.xaml` – A very small XAML file.
- `example-resources.xaml` – Resource dictionary.

Feel free to open any of these in Zed to see the highlighting in action.

## Contributing

Contributions are welcome! Here are a few ways you can help:

  - **Improve the grammar** – Develop a native XAML Tree-Sitter grammar.
  - **Add more XAML‑specific rules** – `highlights.scm` can be extended with additional patterns for directives, attached properties, or other language‑specific constructs.
  - **Add indentation rules** – Update `indents.scm` to handle more edge cases.

1. **Clone the repo** into your local extensions folder (or use the command line from the Zed UI):
   ```bash
   git clone https://github.com/robispurple/zed-xaml.git
   ```

1. **Load the extension** from the Zed command palette:
    - Open Zed.
    - Press `Ctrl+Shift+X` (or `Cmd+Shift+X` on macOS).
    - Click `Install Dev Extension` button in top right corner.
    - Select the cloned extension folder from the previous step.

1. **Implement your changes** to the extension.

1. **Rebuild the extension** if changes have been made to the local files:
    - Press `Ctrl+Shift+X` (or `Cmd+Shift+X` on macOS).
    - Click `Rebuild` button on the right side of the local dev extension card.

The extension is self‑contained; no additional dependencies are required.

All pull requests should include updated tests in the `test/` folder and a brief description of what they change.

## License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

*Happy coding with XAML in Zed!*
