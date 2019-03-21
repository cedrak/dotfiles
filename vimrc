" Very important, will be used in all of <Leader> definitions
let mapleader = ","

" Plugins section
call plug#begin('~/.vim/plugged')
"    Plug 'scrooloose/nerdtree'
"    map <Leader>t :NERDTreeToggle<CR>
"    Plug 'scrooloose/nerdcommenter' " Use <Leader>c<Space>
"    Plug 'godlygeek/tabular' " Use :Tab <regex>
"    Plug 'tpope/vim-surround'
"    Plug 'bling/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
"    let g:airline#extensions#tabline#enabled = 1
"    Plug 'mhinz/vim-startify' " Start menu
"    Plug 'skywind3000/asyncrun.vim'
"    Plug 'pedsm/sprint'
"    Plug 'ervandew/supertab' " Tab for autocomplete
"    Plug 'matze/vim-move'
"    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-sensible'
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
"    let g:ycm_semantic_triggers['typescript'] = ['.']

call plug#end()
" End of plugins

" My options
set ruler
set number
set background=dark
set showcmd
set noswapfile
set encoding=utf-8
set backspace=2

" Tabs = 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" Show helpful flicker to indicate the bell
" set visualbell
