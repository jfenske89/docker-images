set nocompatible
filetype off
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'thaerkh/vim-workspace'
Plug 'phanviet/vim-monokai-pro'
Plug 'sickill/vim-monokai'
Plug 'skielbasa/vim-material-monokai'
Plug 'shougo/neocomplete.vim'
Plug 'Shougo/vimproc'
Plug 'Shougo/unite.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Start: nodejs-development
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'burnettk/vim-angular'
Plug 'cakebaker/scss-syntax.vim'
Plug 'mlaursen/vim-react-snippets'
Plug 'skatzteyp/vim-ultisnips-angular2'
Plug 'joaohkfaria/vim-jest-snippets'
Plug 'trkw/yarn.vim'
" End: nodejs-development
call plug#end()

" Indentation
filetype plugin indent on
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab autoindent

set updatetime=100

" Remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

syntax on
set hidden

" Set color scheme
silent! color monokai
silent! color material-monokai

" Show line numbers by default
set number

" Toggle line numbers with Leader, l
nnoremap <Leader>l :set number!<CR>

" Customize the line numbers
highlight LineNr ctermfg=black ctermbg=grey

" Highlight current line
hi CursorLine cterm=NONE ctermbg=lightgray ctermfg=black guibg=black guifg=white
" set cursorline

" Toggle the current line highlight with Leader, c
nnoremap <Leader>c :set cursorline!<CR>

" Right margin
set colorcolumn=100
highlight ColorColumn ctermbg=7

" Highlight search
set hlsearch

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" GitGutter tweaks for color scheme
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn            ctermbg=lightgray
highlight GitGutterAdd          guifg=#009900 guibg=lightgray ctermfg=2 ctermbg=lightgray
highlight GitGutterChange       guifg=#bbbb00 guibg=lightgray ctermfg=3 ctermbg=lightgray
highlight GitGutterDelete       guifg=#ff2222 guibg=lightgray ctermfg=1 ctermbg=lightgray
highlight GitGutterChangeDelete guifg=#bbbb00 guibg=lightgray ctermfg=3 ctermbg=lightgray

" neocomplete tweaks
if has("lua")
  let g:neocomplete#enable_at_startup = 1
  inoremap <expr><C-g>  neocomplete#undo_completion()
  inoremap <expr><C-l>  neocomplete#complete_common_string()
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><C-h>  neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS>   neocomplete#smart_close_popup()."\<C-h>"
endif

" Disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Start: auto paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
" End: auto paste mode

" Start: nodejs-development
let g:angular_find_ignore = ['build/', 'dist/']
" End: nodejs-development
