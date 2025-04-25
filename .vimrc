"Basic Settings 
syntax on
set encoding=utf-8
set shiftwidth=4
set smartindent
set autoindent
set number
set relativenumber




"==============================Plugin Management==============================

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'

call plug#end()


set background=dark
colorscheme gruvbox

"filetype plugin on


"========================================Key Mappings========================================
let mapleader = " "

inoremap kj  <Esc>
nnoremap  <C-b> :NERDTreeToggle<CR>
au Filetype markdown nnoremap <buffer> <F12> :.!toilet -w 200 -f term -F border<CR>


"NerdCommenting remaps
nmap  <C-_> <leader>c<space>
vmap  <C-_> <leader>c<space>

let g:NERDTreeIgnore = ['^node_modules$']
 

"=Coc settings====

":CocInstall coc-tsserver coc-json coc-html coc-css
":CocInstall coc-emmet
":CocInstall coc-prettier

autocmd FileType json syntax match Comment +\/\/.\+$+
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

nnoremap <leader>java :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
nnoremap <leader>rust :cd %:p:h <CR> :! rustc %:t<CR> :! ./ %:t:r<CR>
