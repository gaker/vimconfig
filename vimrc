" Turn on Pathogen and load all the bundles
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Turn off VI compatability, we won't need it where we're going
set nocompatible

" Modelines can cause issues??
set modelines=0

" Fix up yer tabs, ya'll
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab 

" Whitespace
set list listchars=tab:\ \ ,trail:·

" Alright, here's a whole bunch of stuff I have no clue about :)
set number
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,.hg

" Change the leader to comma, because backslash is so passe
let mapleader = ","

" Searching like it's 1999
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch

" Textwrap, sho' nuf
set wrap
set textwidth=79
set formatoptions=qrn1

" Remap ; -> :, saves a Shift
nnoremap ; :

" Safe after losing focus
au FocusLost * :wa

" Ack
nnoremap <leader>a :Ack

" Hardwrap paragraphs of text
nnoremap <leader>q gqip

" Fold tag
nnoremap <leader>ft Vatzf

" Sort css properties...whoa
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" Select pasted text
nnoremap <leader>v V`]

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Set color scheme
if &t_Co >= 256 || has("gui_running")
   colorscheme vwilight
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

" MacVim Settings
set guifont=Monaco:h12

" Ditch backup files
set nobackup
set noswapfile

" Command-T configuration
let g:CommandTMaxHeight=20

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python  set tabstop=4 textwidth=79 expandtab

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Turn on NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Refresh Ctags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Setup Tlist
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
map <Leader>tl :TlistToggle<CR>

" Turn off search
nnoremap <esc> :noh<return><esc>
