"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cmd's .vimrc file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Configuration greatly inspired by this post:
" http://nvie.com/posts/how-i-boosted-my-vim/
"
" _TODO_ colors:
" * https://github.com/altercation/vim-colors-solarized
" * https://github.com/spf13/vim-colors/
" 
" Great post about "vim grammatic":
"  * https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118
"
set nocompatible " this need to be set at the beggining of the file
let mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	Manager:
"	 * https://github.com/junegunn/vim-plug
"   In use:
"    * https://github.com/vim-scripts/SearchComplete
"    * https://github.com/tpope/vim-sensible
"    * https://github.com/tpope/vim-fugitive
"    * https://github.com/scrooloose/nerdcommenter
"    * https://github.com/kien/ctrlp.vim
"   Considering:
"    * https://github.com/garbas/vim-snipmate
"    * https://github.com/vim-scripts/YankRing.vim
"      https://github.com/svermeulen/vim-yoink
"    * https://github.com/tpope/vim-surround
"    * https://github.com/godlygeek/tabular
"    * https://github.com/vim-airline/vim-airline
"    Plug 'scrooloose/nerdtree'
"    map <Leader>t :NERDTreeToggle<CR>
"    Plug 'bling/vim-airline'
"    Plug 'skywind3000/asyncrun.vim'
"    Plug 'pedsm/sprint'
"    Plug 'ervandew/supertab' " Tab for autocomplete
"    Plug 'matze/vim-move'
"    Plug 'chriskempson/base16-vim'
"    Plug 'ryanoasis/vim-devicons'
"    Plug 'junegunn/goyo.vim'
"    Plug 'yuttie/comfortable-motion.vim'
"
"    Plug 'Shougo/vimproc.vim', {'do': 'make'}
"    Plug 'valloric/youcompleteme'
"    if !exists("g:ycm_semantic_triggers")
"        let g:ycm_semantic_triggers = {}
"    endif
"    
" 
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdcommenter'             " Use <Leader>c<Space>
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Tabs configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent              " auto indent new lines
set tabstop=4               " display tabs as 4-space long
set shiftwidth=4            " number of auto-indent spaces
set softtabstop=4           " number of spaces per tab
set expandtab               " replaces tabs with spaces
set smarttab	            " use smart-tabs (<BS> deletes shiftwidth spaces)
filetype plugin indent on   " filetype detection and indentation
" keep hard tabs in Makefiles
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Default settings tweaking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set undofile                   " creates .FILE.un~ file with undo changes
set encoding=utf-8              " default encoding 
set backspace=indent,eol,start  " allow backspaceing over everything
set ttyfast                     " improves smoothness
set hidden                      " TODO

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Wrapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap                    " wrap lines after textwidth
set textwidth=78            " number of columns in line
set colorcolumn=80          " explicitly show column 80
set formatoptions=tcrqnj1   " see :help fo-table

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2    " always show status line
set relativenumber  " show line numbers relative to the current cursor position 
set wildmenu        " show list of matches in wildmenu. | <TAB>, ←, →, ^p, ^n
set visualbell      " use visual effects on bell
set showmode        " display which mode is currently active
set showcmd         " display currenlty typed command
set ruler           " show row and column number
set scrolloff=3		" show always 3 lines above and below current line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Spell check settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spelllang=pl

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Searching options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use very magic AKA "normal" regexes special chars
nnoremap / /\v
vnoremap / /\v
set ignorecase      " use case insensitive search
set smartcase       " use case sensitive search when there are capital letters
                    " in pattern
set incsearch       " highlight matches during pattern typing
set showmatch       " brifely jump to the matching bracket when opening one is
                    " inserted
set hlsearch        " highlight all matches
"set gdefault       " swaps all matches in line TODO

"" Highlighting
autocmd BufNewFile,BufFilePre,BufRead *.md setf markdown

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clean highlight with ", "
nnoremap <leader><space> :noh<cr>
" find next matching brackets with tab
nnoremap <tab> %
vnoremap <tab> %
" disable F1 
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" split navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
