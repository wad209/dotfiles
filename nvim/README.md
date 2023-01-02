## Keybindings

Here's a quick list of the custom keybindings and plugin Keybindings for easy
reference. This list isn't exhaustive, but I'll try and keep it up to date.

# NERDTree
| Keystroke  | Description               |
|------------|---------------------------|
| `\n`       | Toggle NERDTree           |
| `\N`       | Jump into NERDTree window |
| `ctlr-w l` | Jump back to main window  |

# NERDCommenter
https://github.com/preservim/nerdcommenter has a complete list of keybindings
but here are some of the most useful:

| Keystroke    | Description                                                                              |
|--------------------|------------------------------------------------------------------------------------|
| `<leader>cc`       | Comment out the current line or text selected in visual mode.                      |
| `<leader>c<space>` | Toggles the comment state of the selected line(s).                                 |
| `<leader>cs`       | Comments out the selected lines with a pretty block formatted layout.              |
| `<leader>ca`       | Switches to the alternative set of delimiters.                                     |
| `<leader>cA`       | Adds comment delimiters to the end of line and goes into insert mode between them. |

# coc.nvim
Again, there are a ton of bindings not documented here.

| Keystroke    | Description                                                                        |
|--------------|------------------------------------------------------------------------------------|
| `C-n/p`      | Next/prev for coc completion menu.                                                 |
| `]g`  `[g`   | Previous/next for diagnostic message. See all with `:CocDiagnostics`               |
|--------------|------------------------------------------------------------------------------------|
| `gd`         | Jump to definition                                                                 |
| `gy`         | Open type definition file (or jump to it if its in the current file?)              |
| `gi`         | Show implementations                                                               |
| `gr`         | Show references                                                                    |
| `K`          | Show documentation                                                                 |
| `<leader>rn` | Open rename dialog                                                                 |
| `<leader>f`  | Format selected code                                                               |
| `<leader>a`  | Apply code actions (aka recommended fixes) to selected code                        |
| `<leader>ac` | Apply code actions at cursor                                                       |
| `<leader>as` | Apply code actions to entire buffer                                                |
| `<leader>qf` | Apply preferred quickfix action to fix diagnostic on the current line              |
| `<leader>f`  | Format selected code                                                               |
| `<leader>re` | Refactor code actions menu                                                         |
| `<leader>r`  | Refactor code actions menu for selection                                           |
| `<leader>cl` | Run the Code Lens action on the current line                                       |
| `<leader>f`  | Format selected code                                                               |
| `<leader>f`  | Format selected code                                                               |
| `C-s`        | Selection ranges (needs serer support)                                             |
| `:Format`    | Format current buffer                                                              |
| `:Fold`      | Fold current buffer (folding also works on classes/function)                       |
| `:OR`        | Organize imports                                                                   |
| `<space>a`   | Show diagnostics                                                                   |
| `<space>e`   | Manage extensions                                                                  |
| `<space>c`   | Show commands                                                                      |
| `<space>o`   | Show symbols (seems to let you jump between sections)                              |
| `<space>s`   | Show workspace symbols (not 100% what workspace symbols are)                       |
| `<space>j`   | Do default action for the next item                                                |
| `<space>k`   | Do default action for the previous item                                            |
| `<space>p`   | Resume latest coc list                                                             |

# FIXME
1. :CocDiagnostics seems to not work or only partially work.

2. coc-codelens-action doesn't work (at least in JS)
