execute pathogen#infect()
syntax on
filetype plugin indent on

:set expandtab
:set tabstop=4
:retab
:set shiftwidth=4
:set number
:set backspace=2

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>n :NERDTreeToggle<CR>

if has("autocmd")
  autocmd BufWritePre * :silent !mkdir -p %:p:h
end
