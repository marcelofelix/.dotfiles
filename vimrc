execute pathogen#infect()
syntax enable
:set regexpengine=1
set background=dark
" colorscheme solarized
filetype plugin indent on
runtime macros/matchit.vim

let mapleader=" "
set relativenumber " set relative line numbers
set number " precede each line with its line number
:set expandtab
:set tabstop=4
:retab
:set shiftwidth=4
:set number
:set backspace=2
:set hlsearch
:set incsearch
:set esckeys
set wildignore+=dist,tmp,*.so,*.swp,*.zip,*.class,*.gzip,node_modules,DS_Store,*.git,*.png,*.jpg,*.gif,*.jpeg,vendor

cnoremap %% <C-R>=expand('%:h').'/'<cr>
nmap <Leader><Leader> :w<CR>
nmap <Leader>q :bdelete<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>e :e#<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
nmap <Leader>- :split<CR>
nmap <Leader>\ :vsplit<CR>
nmap <Space><Space> :wa<CR>
nnoremap L $
nnoremap H ^
set clipboard=unnamed

"Command-t
let g:CommandTWildIgnore=&wildignore . ",node_modules,DS_Store,git,vendor,bower_components,doc,coverage,swagger"

"Closetags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.html.erb"

nmap <Leader>n :NERDTreeToggle<CR>

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

"vim-airline
set laststatus=2
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme='powerlineish'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"syntatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

map <Leader>c :SyntasticCheck<CR>

"vim-javascript
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

"Tabular
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif
"ag
let g:ag_working_path_mode="r"
"vim-jsbeautiry
map <Leader><C-f> :call JsBeautify()<cr>
