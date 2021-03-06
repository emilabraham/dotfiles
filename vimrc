"Emil Abraham's vimrc

"This makes vim use the indentation of the previous line for a newly created
"line.
"set autoindent

"Display an incomplete command in the lower right corner of the window.
set showcmd

"Based off the filetype you are editing, vim tries to use proper indenting and
"syntax highlighting.
filetype plugin indent on

"Turn on syntax highlighting
syntax on

"Turns on line numbers on the left side.
set number

"Insert space characters whenever tab key is pressed.
set expandtab

"Insert 2 spaces for a tab.
set tabstop=2

"Insert 2 spaces for indentation.
set shiftwidth=2

"textwidth is set to 80
set textwidth=80

"Show the column number in status bar
set ruler

"Use javascript highlighting for json
autocmd BufNewFile,BufRead *.json set ft=javascript

"executes pathogen, a plugin consolidator
execute pathogen#infect()

"set colorscheme
"colorscheme hybrid

"set a visual line at 80 characters
"set colorcolumn=80

"Automatic word wrapping
:set formatoptions+=t

"Syntax highlighting for bash files
autocmd BufRead,BufNewFile bashrc*,bash_profile set filetype=sh
