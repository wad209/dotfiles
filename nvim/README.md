# Getting started

If you've used other neovim configs, be sure and do

```
rm -r ~/.local/share/nvim/
```

to avoid any issues. Ensure `python3-venv`, `npm`, `rg` and `fd` are also
installed.

When you run nvim for the first time, lazy.nvim will download all the plugins.
Once this is complete, hit `q` and wait for treesitter to finish downloading
parsers. Then, run `:Mason` and let it download and install LSP etc. Then quit
and restart nvim!

# Keybindings

Here's a quick list of the custom keybindings and plugin Keybindings for easy
reference. This list isn't exhaustive, but I'll try and keep it up to date.

## nvim-lspconfig/nvim-cmp

    keymap(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

| Keystroke          | Description                                           |
| ------------------ | ----------------------------------------------------- |
| `C-n/p` or `C-j/k` | Next/prev for cmp completion menu.                    |
| `C-b/f`            | Scroll cmp docs                                       |
| `gd`               | Jump to to definition                                 |
| `gD`               | Jump to to declaration                                |
| `K`                | Show documentation                                    |
| `gI`               | Jump to implementations                               |
| `gr`               | Show references                                       |
| `gl`               | Open flow (to shows errors etc)                       |
| `<leader>lf`       | Format file (runs LSP and linter formatting)          |
| `<leader>li`       | Show LSP info                                         |
| `<leader>lI`       | Show null-ls info                                     |
| `<leader>la`       | Apply code action (if available)                      |
| `<leader>lj/lk`    | Jump to next/prev diagnostic message                  |
| `<leader>lr`       | Code aware rename                                     |
| `<leader>ls`       | Show signature help                                   |
| `C-space`          | I have no idea what this does, cmp.mapping.complete() |
| `C-e`              | Abort cmp autocomplete (closes the menu)              |

## Windows and buffers

| Keystroke   | Description           |
| ----------- | --------------------- |
| `C-h/l/j/k` | Jump between windows  |
| `S-h/l/j/k` | Shift between buffers |
| `S-q`       | Close current buffer  |

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

## nvim-tree

| Keystroke   | Description                 |
| ----------- | --------------------------- |
| `<leader>n` | Toggle the tree open/closed |
| `<leader>N` | Jump to the tree            |

## symbols-outline

| Keystroke   | Description   |
| ----------- | ------------- |
| `<leader>t` | Toggle Tagbar |

## Comment.nvim

<https://github.com/numToStr/Comment.nvim> has a complete list of keybindings
but here are some of the most useful:

| Keystroke | Description                                                      |
| --------- | ---------------------------------------------------------------- |
| `gcc`     | Toggles the current line using linewise comment                  |
| `gcb`     | Toggles the current line using blockwise comment                 |
| `gco`     | Insert comment to the next line and enters INSERT mode           |
| `gcO`     | Insert comment to the previous line and enters INSERT mode       |
| `gcA`     | Insert comment to end of the current line and enters INSERT mode |

## nvim-telescope

There are more Keybindings and pickers to be set up:
<https://github.com/nvim-telescope/telescope.nvim/wiki/Showcase>

| Keystroke    | Description            |
| ------------ | ---------------------- |
| `<leader>ff` | Find files             |
| `<leader>fg` | Live grep              |
| `<leader>fb` | Search buffers         |
| `<leader>fh` | Search help            |
| `<leader>fr` | Search git files       |
| `<leader>fo` | Find last viewed files |
| `<leader>fk` | Find keymaps           |

## persistence.nvim

Session manager.

| Keystroke  | Description                |
| ---------- | -------------------------- |
| <leader>qs | Restore session            |
| <leader>ql | Restore last session       |
| <leader>qd | Don't save current session |

## Notifications

| Keystroke    | Description           |
| ------------ | --------------------- |
| `<leader>un` | Dismiss notifications |

## Folding

| Keystroke    | Description                        |
| ------------ | ---------------------------------- |
| `za`         | Toggle fold                        |
| `zd`         | Delete fold marker on current line |
| `zf{motion}` | Create fold from current line      |
| `zR`         | Open all folds                     |
| `zM`         | Close all folds                    |
