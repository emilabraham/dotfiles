"Emil Abraham's vimrc

"This makes vim use the indentation of the previous line for a newly created
"line.
set autoindent

"Display an incomplete command in the lower right corner of the window.
set showcmd

"Based of the filetype you are editing, vim tries to use proper indenting and
"syntax highlighting.
filetype plugin indent on

"His make vim break text to avoid lines longer than 78 characters, but only
"for files detected to be plain text.
autocmd  FileType text setlocal textwidth=78
