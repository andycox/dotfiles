" based on http://github.com/jferris/config_files/blob/master/vimrc
" enhanced based on https://github.com/jdavis/dotfiles/blob/master/.vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Use smarter defaults
set smartindent
set smarttab

" Use autoindenting
set autoindent

" Always display the status line
set laststatus=2

" Always show the last line
set display+=lastline

" \ is the leader character
let mapleader = ","

" Numbers
set number

" case only matters with mixed case expressions
set ignorecase
set smartcase

" get our vundle on
filetype off                 " required by vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-git'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'bitc/vim-bad-whitespace'

" plugin configgy stuff
" Airline
let g:airline_enable_branch = 1 
let g:airline_theme = 'solarized'

" NERDtree
let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['\.py[co]$', '\.sw[po]$', '\.class$', '\.aux$']
nmap <leader>tb :NERDTreeToggle<cr>

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
nmap <leader>p :CtrlP<cr>

" Ack
let g:ackpreview = 2
let g:ackhighlight = 1
nmap <leader>/ :Ack!<space>

" Multiple cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<C-j>'
let g:multi_cursor_prev_key = '<C-k>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'

set list listchars=tab:▸\ ,trail:.
set list

fun! ToggleWhitespace()
  ToggleBadWhitespace
  if &list
    set nolist
  else
    set list listchars=tab:▸\ ,trail:.
    set list
  endif
endfun

nmap <leader>tw :cal ToggleWhitespace()<cr>

" All of your Plugins must be added before the following line
filetype plugin indent on    " required by vundle

" pretty colors
syntax enable
set background=dark
colorscheme solarized
