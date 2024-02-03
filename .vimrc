"          _                         _____ 
"    _   _(_)_ __ ___  _ __ ___    _|___ / 
"   \ \ / / | '_ ` _ \| '__/ __|  (_) |_ \ 
"    \ V /| | | | | | | | | (__    _ ___) |
"     \_/ |_|_| |_| |_|_|  \___|  (_)____/ 

" websites i took shit from:
" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

" MAPPINGS ----------------------------------------------------------------{{{
let mapleader = ","

"brackets are stupid
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :w<cr><C-w>q:source $MYVIMRC<cr>
"}}}

" CONFIGURATIONS ----------------------------------------------------------{{{

" filetype detection
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Add numbers to each line on the left-hand side.
set number

" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 column
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=5

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters
"as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
"}}}

" VIMSCRIPT ---------------------------------------------------------------{{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}
