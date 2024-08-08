" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible
filetype plugin on
set encoding=utf-8
set number relativenumber
syntax enable

" Enabling auto completion:
set wildmode=longest,list,full

" Disabling auto comments on new lines:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right:
set splitbelow splitright

" + Remapping split navigation keys to vim hjkl
map <C-h> <C-w>h 
map <C-j> <C-w>j 
map <C-k> <C-w>k 
map <C-l> <C-w>l 

" Binding keys:
nnoremap <SPACE> <Nop>
let mapleader=" "

map <leader>s :!clear && shellcheck %<CR>
nnoremap S :%s///g<Left><Left>
map <leader>n :NERDTree<CR>
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'
map <leader>g :Goyo \| set linebreak<CR>

" Script for XDG base directory
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p')

set backupdir=$XDG_STATE_HOME/vim/backup | call mkdir(&backupdir, 'p')
set directory=$XDG_STATE_HOME/vim/swap   | call mkdir(&directory, 'p')
set undodir=$XDG_STATE_HOME/vim/undo     | call mkdir(&undodir,   'p')
set viewdir=$XDG_STATE_HOME/vim/view     | call mkdir(&viewdir,   'p')

set viminfofile=NONE
if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif



" Set Dein base path (required)
let s:dein_base = '/home/axelor/.local/share/dein'

" Set Dein source path (required)
let s:dein_src = '/home/axelor/.local/share/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('$XDG_CONFIG_HOME/vim/plugged/vim-airline')
call dein#add('$XDG_CONFIG_HOME/vim/plugged/vim-latex-live-preview')
call dein#add('$XDG_CONFIG_HOME/vim/plugged/vim-floaterm')
call dein#add('$XDG_CONFIG_HOME/vim/plugged/nerdtree')
call dein#add('$XDG_CONFIG_HOME/vim/plugged/goyo.vim')

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on


" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()

"endif
