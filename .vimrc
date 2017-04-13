execute pathogen#infect()

let mapleader = "\<Space>"

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

nnoremap <leader>e :CtrlPBuffer<Cr>

nnoremap nt :NERDTree<Cr>

nnoremap <tab> :bnext<Cr>
nnoremap <Backspace> :bprevious<Cr>

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

set hidden

" always uses spaces instead of tab characters
" set expandtab
" set autoindent
" set autoindent
" set shiftwidth=4
" set tabstop=4

set number

set whichwrap+=<,>,h,l,[,]
set clipboard=unnamedplus

let g:nerdtree_tabs_open_on_console_startup = 0


let g:ag_working_path_mode="r"

syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

nmap <F9> :TagbarOpenAutoClose<CR>
nmap <F8> :TagbarToggle<CR>

set updatetime=1500

noremap j 5j
noremap k 5k

let g:ctrlp_show_hidden = 1

command! -nargs=1 -range Tabf exec <line1> . ',' . <line2> . 'Tabularize /^[^' . escape(<q-args>, '\^$.[?*~') . ']*\zs' . escape(<q-args>, '\^$.[?*~')

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = '||'
let g:airline#extensions#tabline#left_alt_sep = '||'
" let g:airline_theme='base16_atelierlakeside'
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
