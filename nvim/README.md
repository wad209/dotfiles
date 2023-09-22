# Keybindings

Here's a quick list of the custom keybindings and plugin Keybindings for easy
reference. This list isn't exhaustive, but I'll try and keep it up to date.

## Folding <!--{{{-->

| Keystroke    | Description                        |
| ------------ | ---------------------------------- |
| `za`         | Toggle fold                        |
| `zd`         | Delete fold marker on current line |
| `zf{motion}` | Create fold from current line      |
| `zR`         | Open all folds                     |
| `zM`         | Close all folds                    |

<!--}}}-->

## Navigation <!--{{{-->

| Keystroke   | Description          |
| ----------- | -------------------- |
| `C-h/l/j/k` | Jump between windows |

<!--}}}-->

## nvim-surround

The three "core" operations of `add`/`delete`/`change` can be done with the
keymaps `ys{motion}{char}`, `ds{char}`, and `cs{target}{replacement}`,
respectively. For the following examples, `*` will denote the cursor position:

| Old text                   | Command     | New text                |
| -------------------------- | ----------- | ----------------------- |
| `surr*ound_words`          | `ysiw)`     | `(surround_words)`      |
| `*make strings`            | `ys$"`      | `"make strings"`        |
| `[delete ar*ound me!]`     | `ds]`       | `delete around me!`     |
| `remove <b>HTML t*ags</b>` | `dst`       | `remove HTML tags`      |
| `'change quot*es'`         | `cs'"`      | `"change quotes"`       |
| `<b>or tag* types</b>`     | `csth1<CR>` | `<h1>or tag types</h1>` |
| `delete(functi*on calls)`  | `dsf`       | `function calls`        |

## nvim-tree <!--{{{-->

| Keystroke   | Description    |
| ----------- | -------------- |
| `<leader>n` | Open nvim tree |

<!--}}}-->

## symbols-outline <!--{{{-->

| Keystroke   | Description   |
| ----------- | ------------- |
| `<leader>t` | Toggle Tagbar |

<!--}}}-->

## Comment.nvim <!--{{{-->

<https://github.com/numToStr/Comment.nvim> has a complete list of keybindings
but here are some of the most useful:

| Keystroke                 | Description                                              |
| ------------------------- | -------------------------------------------------------- |
| `<leader>cc`              | Comment out the current line or text selected in visual  |
| mode.                     |
| `<leader>c<space>`        | Toggles the comment state of the selected line(s).       |
| `<leader>cs`              | Comments out the selected lines with a pretty block      |
| formatted layout.         |
| `<leader>ca`              | Switches to the alternative set of delimiters.           |
| `<leader>cA`              | Adds comment delimiters to the end of line and goes into |
| insert mode between them. |

<!--}}}-->

## coc.nvim <!--{{{-->

Again, there are a ton of bindings not documented here.

| Keystroke         | Description                                                    |
| ----------------- | -------------------------------------------------------------- |
| `C-n/p`           | Next/prev for coc completion menu.                             |
| `]g` `[g`         | Previous/next for diagnostic message. See all with             |
| `:CocDiagnostics` |
| `gd`              | Jump to definition                                             |
| `gy`              | Open type definition file (or jump to it if its in the current |
| file?)            |
| `gi`              | Jump to implementations                                        |
| `gr`              | Show references                                                |
| `K`               | Show documentation                                             |
| `<leader>rn`      | Open rename dialog                                             |
| `<leader>f`       | Format selected code                                           |
| `<leader>a`       | Apply code actions (aka recommended fixes) to selected code    |
| `<leader>ac`      | Apply code actions at cursor                                   |
| `<leader>as`      | Apply code actions to entire buffer                            |
| `<leader>qf`      | Apply preferred quickfix action to fix diagnostic on the       |
| current line      |
| `<leader>f`       | Format selected code                                           |
| `<leader>re`      | Refactor code actions menu                                     |
| `<leader>r`       | Refactor code actions menu for selection                       |
| `<leader>cl`      | Run the Code Lens action on the current line                   |
| `<leader>f`       | Format selected code                                           |
| `<leader>f`       | Format selected code                                           |
| `C-s`             | Selection ranges (needs serer support)                         |
| `:Format`         | Format current buffer                                          |
| `:Fold`           | Fold current buffer (folding also works on classes/function)   |
| `:OR`             | Organize imports                                               |
| `<space>a`        | Show diagnostics                                               |
| `<space>e`        | Manage extensions                                              |
| `<space>c`        | Show commands                                                  |
| `<space>o`        | Show symbols (seems to let you jump between sections)          |
| `<space>s`        | Show workspace symbols (not 100% what workspace symbols are)   |
| `<space>j`        | Do default action for the next item                            |
| `<space>k`        | Do default action for the previous item                        |
| `<space>p`        | Resume latest coc list                                         |

<!--}}}-->

## coc-snippets <!--{{{-->

| Keystroke | Description                                                |
| --------- | ---------------------------------------------------------- |
| `C-l`     | Trigger snippet expand                                     |
| `C-j/k`   | Jump to next/previous placeholder                          |
| `<tab>`   | Trigger snippet. Does this conflict with the autocomplete? |

<!--}}}-->

## FIXME <!--{{{-->

1. :CocDiagnostics seems to not work or only partially work.

2. coc-codelens-action doesn't work (at least in JS) <!--}}}-->

## nvim-telescope <!--{{{-->

There are more Keybindings and pickers to be set up:
<https://github.com/nvim-telescope/telescope.nvim/wiki/Showcase>

| Keystroke    | Description      |
| ------------ | ---------------- |
| `<leader>ff` | Find files       |
| `<leader>fg` | Live grep        |
| `<leader>fb` | Search buffers   |
| `<leader>fh` | Search help      |
| `<leader>fr` | Search git files |

<!--}}}-->
