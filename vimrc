set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

let mapleader = ","

" nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

nnoremap <leader>e :CtrlPBuffer<Cr>
map <C-o> :CtrlPBufTag<cr>
"set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**

autocmd FileType vue syntax sync fromstart

nnoremap <C-b> :NERDTreeToggle<Cr>

nnoremap <tab> :bnext<Cr>
nnoremap <Backspace> :bprevious<Cr>

set pastetoggle=<leader>q

set rtp+=~/.fzf

"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

""Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

" EMMET
let g:user_emmet_leader_key='<leader>e'

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

nmap <leader>t :!ctags<cr>
nmap <leader>f :tag<space>

" mac searching case insensative and highlight as you type etc
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
" set gdefault
set incsearch
" set showmatch
set hlsearch
" ,<space> clears above highlighting
nnoremap <leader><space> :noh<cr>
" ,l  toggle line numbers
" ,w   remove end of line whitespace
nnoremap <leader>l :set nu!<cr>
nnoremap <leader>w :FixWhitespace<cr>

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

let g:UltiSnipsSnippetsDir = $HOME."/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.vim/UltiSnips']

" disable arrow keys to force use of hjkl
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"-------------Mappings--------------------"
nmap <Leader>ev :e $MYVIMRC<cr>

" auto source vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

nnoremap ; :

" make it visualize tabs and end of lines
" set list
set listchars=tab:▸\ ,eol:¬
" ,1 disable and enable above
nmap <leader>1 :set list!<cr>

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" easy escaping to normal mode
imap jj <esc>

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

set hidden

" always uses spaces instead of tab characters
" if hostname() == "scottdev"
    set expandtab
" endif
" set autoindent
" set autoindent
" set shiftwidth=4
" set tabstop=4

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_vue = 1

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
" let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_checkers = ['php']

nmap <leader>to :TagbarOpenAutoClose<CR>
nmap <leader>tt :TagbarToggle<CR>

set updatetime=1500

let g:ctrlp_show_hidden = 1

command! -nargs=1 -range Tabf exec <line1> . ',' . <line2> . 'Tabularize /^[^' . escape(<q-args>, '\^$.[?*~') . ']*\zs' . escape(<q-args>, '\^$.[?*~')

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = '||'
let g:airline#extensions#tabline#left_alt_sep = '||'
" let g:airline_theme='base16_atelierlakeside'
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set laststatus=2
set encoding=utf-8
set noshowmode

" auto-remove trailing spaces
" autocmd BufWritePre *.php :%s/\s\+$//e
" autocmd BufWritePre *.twig :%s/\s\+$//e
" autocmd BufWritePre *.js :%s/\s\+$//e

"
" --- php_cs_fixer stuff ---
"
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>
" run cs fixer on save, for some reason messes up syntax, so added post
" command to add it back
if hostname() == "scottdev"
	"autocmd BufWritePre *.php :call PhpCsFixerFixFile()
	"autocmd BufWritePost *.php :set syntax=php
endif

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Surround shortcuts
nmap <leader>mb ysiw<b>

" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" project wide search and replace using ag
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

" ---------------------- Laravel stuff ------------"
nmap <leader>lr :e routes/web.php<cr>
nmap <leader>lca :e config/app.php<cr>
nmap <leader>lfc :CtrlP<cr>apphttpcontrollers
nmap <leader>lfm :CtrlP<cr>appmodels
nmap <leader>lfv :CtrlP<cr>resourcesviews


" notes and tips
" - press 'zz' to center the line where the cursor is located

" di(
" or di'
" delete between ( or ' or whatever

" ci( or '
" same as above but puts you in insert mode

" vi
" same, puts in visual mode with it selected

" replace i with a and it will include the ( or " or whatever

" ctrl]
" when over text, it will look for that in ctags and go to it

" :ccl  close quickfix

" yiw  yank current work

" m{cap character} - set a mark
" '{above character} - return to start of line of mark
" `{above character} - return to line and column of mark

" delete to mark
" use m{lowercase char ( lower case limits it to current file )}
" creates mark at bottom of where you want to delete to
" got to start of delete and hit d'{above char}
" v'{above char} would select to mark

" vat selet a tag, for html will select the nearest surrounding tag
" dat same as above but deletes it

" highlight then {1} shift < or > will indend selected n times

" o go to insert mode on new line
" O does same but line above

" ctrl r - ctrlp buffer, lets you fuzzy search functions etc in current file
" vs and sp to open splits
" ctrl and h j k l to switch between them
