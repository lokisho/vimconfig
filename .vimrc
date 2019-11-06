set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin for eslint
Plugin 'vim-syntastic/syntastic'
" All of your Plugins must be added before the following line
" Eslint
Plugin 'w0rp/ale'
" FZF
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" EasyMotion
Plugin 'easymotion/vim-easymotion'
" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Multicursor
Plugin 'terryma/vim-multiple-cursors'
" Optional:
Plugin 'honza/vim-snippets'
" Typescript
Plugin 'herringtondarkholme/yats.vim'
" Graphql
Plugin 'jparise/vim-graphql'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Configuring Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = './scripts/eslint.sh'
" Configure ALE
let g:ale_sign_column_always = 1
let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \   'typescript': ['eslint'],
  \}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '->'
let g:ale_sign_warning = '~>'

" Tabs configuration
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
" Set line numbers by default
set number
" Coloring
syntax on
"More powerful backspacing
set backspace=indent,eol,start 
" Using C++11 syntax
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
" Having mouse!!! Tho I think this only works for mac osx
set mouse=n
set nowrap
