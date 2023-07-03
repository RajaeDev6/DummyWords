# DummyWords Plugin

The DummyWords plugin is a Vim plugin that allows you to insert dummy text into your Vim buffers. It's useful for generating placeholder text while working on various projects or for testing purposes.

## Installation

You can install the DummyWords plugin using your preferred Vim plugin manager. Below are a few examples:

- **Pathogen**:
  - Clone the DummyWords repository into your `~/.vim/bundle` directory:
    ```
    git clone https://github.com/RajaeDev6/DummyWords.git ~/.vim/bundle/DummyWords
    ```

- **Vundle**:
  - Add the following line to your Vim configuration file (e.g., `~/.vimrc`):
    ```vim
    Plugin 'RajaeDev6/DummyWords'
    ```
  - Save the configuration file and run the following command in Vim:
    ```
    :PluginInstall
    ```

- **Plug**:
  - Add the following line to your Vim configuration file (e.g., `~/.vimrc`):
    ```vim
    Plug 'DummyWords/DummyWords'
    ```
  - Save the configuration file and run the following command in Vim:
    ```
    :PlugInstall
    ```

## Usage

The DummyWords plugin provides a keymap to insert dummy text into your Vim buffers. By default, the keymap is `<leader>hh`.

To use the plugin, follow these steps:

1. Open a file in Vim.
2. Position the cursor at the desired insertion point.
3. Press `<leader>hh` (or the custom keymap you've configured) to insert dummy text.

If you want to customize the keymap or use a custom file for dummy text, you can modify the plugin's configuration variables. See the next section for more details.

## Configuration

The DummyWords plugin provides a few configuration variables that you can modify:

- `g:dummywords_default_keymap` (default: `<leader>hh`): Specifies the default keymap for inserting dummy text. You can change it to your preferred key sequence.

- `g:dummywords_default_file` (default: `./text.txt`): Specifies the default file from which to read the dummy text. You can modify it to specify your own file path.

- `g:dummywords_keymap_user`: If you want to use a custom keymap instead of the default keymap, you can set this variable to your desired key sequence.

- `g:dummywords_custom_file`: If you want to use a custom file for dummy text, you can set this variable to the file path.

To customize these variables, add the appropriate lines to your Vim configuration file (e.g., `~/.vimrc`).

## Examples

Here are a few examples of customizing the DummyWords plugin:

- Changing the keymap to `<leader>jw`:
  ```vim
  let g:dummywords_default_keymap = '<leader>jw'
    ```

- Changing the to a custom file to `/home/username/myfiles/customfile.txt`
    ```Vim
    let g:dummywords_custom_file = /home/username/myfiles/customfile.txt
    ```

## License

The DummyWords plugin is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.
