"Display line numbers in the left margin
set number
"Enable syntax highlighting
syntax on
"Show tabs with 4 spaces width
set tabstop=4
"Number of spaces used for indentation
set shiftwidth=4
"Insert spaces whenever the tab key is pressed
set expandtab
"Tab will insert 4 spaces
set softtabstop=4
"Tabs will be tabs on Makefile files
autocmd FileType make setlocal noexpandtab
" More powerful backspacing
set backspace=indent,eol,start
"Enable automatic indentation
set autoindent
set smartindent
set cindent

