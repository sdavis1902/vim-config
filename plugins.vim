filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'lumiliet/vim-twig'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'airblade/vim-gitgutter'
Plugin 'isruslan/vim-es6'
Plugin 'xsbeats/vim-blade'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'StanAngeloff/php.vim'
if v:version < 800
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'tacahiroy/ctrlp-funky'
    Plugin 'scrooloose/syntastic'
endif
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'tobyS/vmustache'
Plugin 'SirVer/ultisnips'
Plugin 'tobyS/pdv'
Plugin 'scrooloose/nerdtree'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'mattn/emmet-vim'
Plugin 'posva/vim-vue'
if v:version > 799
    Plugin 'junegunn/fzf.vim'
    Plugin 'w0rp/ale'
"    Plugin 'ludovicchabant/vim-gutentags'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
