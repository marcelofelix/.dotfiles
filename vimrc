set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'tpope/tpope-vim-abolish'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'alvan/vim-closetag'
Plugin 'joom/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-line'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-syntax'
Plugin 'kana/vim-textobj-user'
Plugin 'tpope/vim-unimpaired'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'posva/vim-vue'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'othree/html5.vim'

call vundle#end()            " required
filetype plugin indent on    " required


syntax enable
:set regexpengine=1
set background=dark
" colorscheme solarized
filetype plugin indent on
runtime macros/matchit.vim

let mapleader=" "
let g:ctrlp_show_hidden = 1
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
set wildignore+=coverage,dist,tmp,*.so,*.swp,*.zip,*.class,*.gzip,node_modules,DS_Store,*.git,*.png,*.jpg,*.gif,*.jpeg,vendor,doc
set filetype=vue.html

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

"Closetags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.html.erb,*.vue"

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
"nerdtree
let NERDTreeShowHidden=1
