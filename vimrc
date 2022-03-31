

" Add numbers to each line on the left-hand side.
set number

set relativenumber

set laststatus=0
set statusline+=%#LineNr#

"set clipboard=unnamedplus

" Turn syntax highlighting on.
syntax on

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

set clipboard=unnamed

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set nocursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set wrap

" While searching though a file incrementally highlight matching characters as you type.
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

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest



" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader=" "

map ; :
map <LEADER>/ :!


map <LEADER>rc :e ~/.vimrc<CR>

map <LEADER><CR> :nohlsearch<CR>		

map Q :q<CR>
map S :w<CR>
map H 0
map J $
map R :source $MYVIMRC<CR>

map sh :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map sj :set splitright<CR>:split<CR>
map sk :set nosplitright<CR>:split<CR>


map <LEADER>f <C-w>l
map <LEADER>d <C-w>k
map <LEADER>s <C-w>j
map <LEADER>g <C-w>h

vnoremap Y "+y
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>

imap ,w <esc>:w<CR>a
imap ,c <esc>:w<CR>:VimtexCompile<CR>a
imap ,a <esc>A
imap ,f <esc>ji
imap ,d <esc>ki
imap ,s <esc>ha
imap ,g <esc>la

autocmd Filetype tex imap ,e <esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype tex imap ,r $ <--> $<++><esc>?<--><CR>N:nohlsearch<CR>c4l
autocmd Filetype tex imap _ _{<-->}<++><esc>?<--><CR>N:nohlsearch<CR>di{i
autocmd Filetype tex imap ^ ^{<-->}<++><esc>?<--><CR>N:nohlsearch<CR>di{i

color slate


call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'ludovicchabant/vim-gutentags'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround' 
Plug 'Chiel92/vim-autoformat'
Plug 'doy/vim-autobrace'
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'
call plug#end()

"vimtex config:
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexmk'
let maplocalleader = "."

"easymotion
""let g:EasyMotion_do_mapping = 0
nmap <LEADER>c <Plug>(easymotion-overwin-f2)

""nmap <LEADER>w <Plug>(easymotion-overwin-w)

""nmap <LEADER>r <Plug>(easymotion-w)

""let g:EasyMotion_smartcase = 1

""map <LEADER>f <Plug>(easymotion-j)
""map <LEADER>d <Plug>(easymotion-k)



