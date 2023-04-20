set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

" Automatically install plug if not already installed.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin install list
call plug#begin()
 Plug 'ryanoasis/vim-devicons'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-surround'
 Plug 'tomasr/molokai'
 Plug 'zeis/vim-kolor'
 Plug 'easymotion/vim-easymotion'
 Plug 'rust-lang/rust.vim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
 Plug 'jayli/vim-easycomplete'
 Plug 'SirVer/ultisnips'
 Plug 'junegunn/goyo.vim'
 Plug 'evanleck/vim-svelte'
 Plug 'Olical/conjure'
 Plug 'google/vim-maktaba'
 Plug 'google/vim-codefmt'
 Plug 'google/vim-glaive'
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

call glaive#Install()


colorscheme molokai

let g:rustfmt_autosave = 1


let mapleader = ","
nnoremap <leader>e :Explore<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>o :e ~/.config/nvim/init.vim <CR>
nnoremap <leader>g :Git <CR>
nnoremap go <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>g <cmd>Goyo<cr>


Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/enoumy/repos/javaformat/google-java-format-1.16.0-all-deps.jar"



augroup autoformat_settings
  autocmd FileType java AutoFormatBuffer google-java-format
augroup END

