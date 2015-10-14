execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader=" "
:set expandtab
:set tabstop=4
:retab
:set shiftwidth=4
:set number
:set backspace=2
:set hlsearch
:set esckeys

nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>b :b
nmap <Leader>ls :ls
nmap <Leader>bn :bn<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
nmap <Leader>tn :tabnew<CR>
nmap <Leader>tc :tabclose<CR>
nmap <Leader>tf :tabnext<CR>
nmap <Leader>tb :tabprevious<CR>
map <Leader> <Plug>(easymotion-prefix)
map <Leader>pp :CtrlP .<CR>
map! <C-e> <C-y>, 

vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>n :NERDTreeToggle<CR>

if has("autocmd")
  autocmd BufWritePre * :silent !mkdir -p %:p:h
end
