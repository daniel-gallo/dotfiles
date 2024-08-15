"Display relative line numbers
set number
set number relativenumber
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
"Move lines up and down
vnoremap J :<C-u>silent! '<,'>move '>+1<CR>gv=gv
vnoremap K :<C-u>silent! '<,'>move '<-2<CR>gv=gv
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
"Keep selection when indenting, and enable (Shift-)Tab
vnoremap < <gv
vnoremap > >gv
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv
nnoremap <S-Tab> <<
nnoremap <Tab> >>
"Add CTRL+A and CTRL+E to go to the beginning / end of the line
nnoremap <C-a>  ^
inoremap <C-a> <C-o>^
vnoremap <C-a> ^
nnoremap <C-e> $
inoremap <C-e> <C-o>$
vnoremap <C-e> $
"Make <Backspace> delete to the black hole register
:nnoremap <expr> <Backspace> col('.') == 1 ? 'kgJ' : '"_X'
:vnoremap <Backspace> "_d
"Make Enter work normally
:nnoremap <CR> i<CR>
"Use system clipboard
set clipboard=unnamed
"Fix colors if run within tmux
set background=dark
