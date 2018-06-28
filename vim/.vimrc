" vim-plug
call plug#begin('~/.vim/plugged')

" Theme
Plug 'kaicataldo/material.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'hzchirs/vim-material'

" Program Language
Plug 'mxw/vim-jsx'
Plug 'dkinzer/vim-schemer'
Plug 'the-lambda-church/merlin'
Plug 'reasonml/vim-reason'
Plug 'pangloss/vim-javascript'

" Tools
Plug 'bling/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'jisaacks/gitgutter'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

call plug#end()

set tabstop=2
set softtabstop=2
set shiftwidth=2
set number 
set encoding=utf-8
set conceallevel=1
set termguicolors
set noautoindent
set t_Co=256

" syntax
syntax on

" theme
set background=dark
colorscheme dracula 
color dracula 

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

let g:materail_theme_style = 'dark'
let g:material_terminal_italics = 1
let g:airline_theme = 'dracula'
let g:lightline = { 'colorscheme': 'material_vim' }

" javascript
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_function = "ƒ"
let g:javascript_conceal_null = "ø"
let g:javascript_conceal_undefined = "¿"
" Gitgutter
autocmd VimEnter * GitGutterEnable 
let g:gitgutter_max_signs = 1000

