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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" Map ,e and ,v to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <Leader>e :edit %%
map <Leader>v :view %%
nmap w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>b :b
nmap <Leader>ls :ls
nmap <Leader>bn :bn<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
nmap <Leader>tt :tabnew<CR>
nmap <Leader>tc :tabclose<CR>
nmap <Leader>tn :tabnext<CR>
nmap <Leader>tp :tabprevious<CR>
nmap <Leader>- :split<CR>
nmap <Leader>\ :vsplit<CR>

"Easymotion
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0

map <Leader>pp :CtrlP .<CR>
map! <C-e> <C-y>, 

vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

if has("autocmd")
  autocmd BufWritePre * :silent !mkdir -p %:p:h
end


function! RenameFile()

    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

map <Leader>rn :call RenameFile()<cr>
