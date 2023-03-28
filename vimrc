" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set autoread " update file open in vim if it is modified by another program
"set ignorecase " case-insensitive search
set cursorline " highlight the whole line where the cursor is

call pathogen#infect()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

nnoremap ; :
"nore : ;

" quickly enter some common commands using a command and shorthand
let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
map <leader>tn :tabnew
map <leader>cd :cd %:p:h<cr>
map <silent> ,/ :nohlsearch<CR>

" jj exits insert mode
inoremap jj <Esc>

set autoindent " indent next line same as current line
set nosmartindent " don't adjust indentation based on syntax
set et  " expand tab: replace tabs with spaces
set sw=4 " use 4 spaces for indentation
set smarttab " no idea what this really does

set backup " where to put vim backup files
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set scrolloff =5 " scroll file so cursor is always this far from top/bottom edge
set history=500 " keep 500 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incremental searching (search as you type)

set lines=80 " Window size
set columns=140
" Don't use Ex mode, use Q for formatting
map Q gq
"nmap Q gqap

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
 syntax on
 set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    "filetype plugin indent on

    set shellslash

    set grepprg=grep\ -nH\ $*

    let g:tex_flavor='latex'
    let g:TeX_ViewRule_pdf='Preview'

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=78
    autocmd FileType python compiler pylint
    let g:pylint_onwrite = 0
endif

set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

if &t_Co >= 256 || has("gui_running")
    colorscheme gruvbox
    set background=dark
endif

sy on " syntax highlighting on

set gfn=Menlo\ Regular:h14 " default font

" code folding
set fen
set foldmethod=indent
set foldlevel=99

set wildignore=*.pyc,*.swp,*.o,*.so  " file finder ignores these
set visualbell
set noerrorbells " vim won't make sounds

set pastetoggle=<F2>  " shortcut for :set paste or :set nopaste

cmap w!! w !sudo tee % >/dev/null

"set relativenumber

nnoremap <tab> %
vnoremap <tab> %

" Syntax checking with syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Ignore some style errors
let g:syntastic_python_flake8_post_args='--ignore=E201,E202,E231,E731,E226,E225,E501,E302,E701,E221,E222,E306,E127'
"set statusline=%{fugitive#statusline()}

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
vnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
