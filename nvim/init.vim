" ##############################################################################
" vim/vimrc - Vim configuration
" ##############################################################################

" Plugins {{{
" Run:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" to install vim-plug

call plug#begin()
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'jnurmine/Zenburn'
 Plug 'sheerun/vim-polyglot'
 Plug 'jiangmiao/auto-pairs'
 Plug 'ryanoasis/vim-devicons'
 "Plug 'SirVer/ultisnips'
 "Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-pyright',
  \ 'coc-clangd',
  \ 'coc-html',
  \ 'coc-css'
  \ ]
call plug#end()

" }}}

" General Settings {{{
set nocompatible					" Disable vi-compatible mode
set hidden                          " Switch buffers without saving
set noerrorbells                    " Don't make noise on errors
set shortmess+=I                    " Do not show welcome screen
set title                           " Update window title
set clipboard=unnamedplus           " Use X11 clipboard for + register
set ttyfast                         " Speed up scrolling in Vim
set noswapfile                      " disable creating swap file
set nobackup                        " disable backup files for coc.nvim
set nowritebackup
set splitright                      " cause split windows to go right by default
set splitbelow                      " cause split downs to go below by default
set wildmode=longest,list

" }}}
 
" Buffers {{{

" }}}

" Indentation {{{
set autoindent                      " Automatic indentation on new lines
set copyindent                      " Copy existing indentation structure on autoindent
set preserveindent                  " Preserve indentation structure for existing lines
set smartindent                     " Smart indentation based on typed code
set smarttab                        " Tabs based on shiftwidth, not tabstop
set cindent                         " Automatically indent code

set expandtab                       " Use spaces instead of tabs

" Tab width
set softtabstop=0
set tabstop=4
set shiftwidth=4
" }}}

" Folding {{{
" Toggle folds using za
if has('folding')
	set foldenable                  " Enable folding
	set foldmethod=marker           " Fold on marker
	set foldopen-=search            " Do not open folds when searching
	set foldopen-=undo              " Do not open folds when using undo
	"set foldlevel=999              " Show folds at start
	set foldmarker={{{,}}}          " Use default fold marker
	set foldcolumn=0                " Do not use a fold column
endif
" }}}

" Editing {{{
set backspace=indent,eol,start      " Make backspace key behave normally
set noinsertmode                    " Don't stay in insert mode
set spell                           " Enable spell checking

set cursorline                      " Highlight current line
set number                          " Show line numbers

set showmatch                       " Highlight matching pairs
set matchpairs+=<:>                 " Make < and > match

set pastetoggle=<F2>                " Toggle paste mode (no automatic indents)

set colorcolumn=80                  " Show a line to indicate the line width

" Automatic formatting; auto-wrap text, comments; automatically insert current
" comment leader when hitting enter in insert mode allow formatting of
" comments with gq; recognize lists
set formatoptions+=tcrqn
" }}}

" Color Settings {{{
set t_Co=256                        " Use 256 colors

if $TERM =~ "256color" || $TERM == "xterm-termite" || $TERM == "alacritty" || has('gui_running') || has('nvim')
	colorscheme zenburn
endif
" }}}

" GUI Settings {{{
set guifont=DejaVu\ Sans\ Mono:h24

if has("gui_running")
	set guioptions-=t               " Disable tear-off menus

	set guioptions-=m               " Disable menubar
	set guioptions-=T               " Disable toolbar

	set guioptions+=LlRrb
	set guioptions-=LlRrb           " Disable scrollbars

	set mousemodel=popup            " Enable right click menu

	" Window size
	set columns=100
	set lines=40
endif
" }}}

" File formats and syntax highlighting {{{
" Unicode support
set encoding=utf-8

" Support UNIX, DOS, and Mac line endings
set fileformats=unix,dos,mac

" Enable filetype auto-detection
filetype plugin on

" Enable filetype-specific indentation
filetype plugin indent on

" Syntax highlighting
syntax enable

" Highlight HTML code inside of PHP
let php_htmlInStrings=1

" Highlight MySQL queries inside of PHP
let php_sql_query=1
" }}}

" Searching {{{
" Highlight results
set hlsearch

" Ignore case unless token contains uppercase
set ignorecase
set smartcase
" }}}

" NERDTree {{{
" Have NERDTree start by default
autocmd VimEnter * NERDTree | wincmd p
"
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Have NERDTree change directory when we do
let g:NERDTreeChDirMode = 2

" Highlight selected entry in tree
let g:NERDTreeHighlightCursorline = 1

" Show hidden files
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" Don't display files we don't need to see
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' , '\.swp$' ]

nmap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFocus<CR>
" }}}

" NERDCommenter {{{
 " Create default mappings
let g:NERDCreateDefaultMappings = 0
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Add default mappings except for <leader>cl which conflicts with coc.nvim
nmap <leader>cc <Plug>NERDCommenterComment
nmap <leader>c<space> <Plug>NERDCommenterToggle
nmap <leader>cs <Plug>NERDCommenterSexy
nmap <leader>ca <Plug>NERDCommenterAltDelims
nmap <leader>cA <Plug>NERDCommenterAppend
" }}}

" airline {{{
" Show buffers as tabs
let g:airline#extensions#tabline#enabled = 1
" Show just the filenames
let g:airline#extensions#tabline#fnamemod = ':t'
" Enable fancy pants fonts
let g:airline_powerline_fonts = 1
" }}}

" coc.nvim {{{
" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
" Remove NERDCommenter keybinding first
unmap <leader>cl
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" }}}
