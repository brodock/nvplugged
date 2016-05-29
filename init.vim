call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ddollar/nerdcommenter'
Plug 'tpope/vim-eunuch'
Plug 'rking/ag.vim'
Plug 'benekastah/neomake'

" Languages support
Plug 'tpope/vim-haml'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'

" Autocomplete (requires python 3)
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'

" Add plugins to &runtimepath
call plug#end()

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Disable netrw /
let g:loaded_netrw        = 1
let g:loaded_netrwPlugin  = 1

" SudoEdit should ask password on terminal only
let g:sudo_no_gui=1

" Theme activation
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme gruvbox
set background=dark

" Autocomplete
let g:deoplete#enable_at_startup = 1

" System clipboard integration
set clipboard=unnamed

"
" Other customizations put in ~/.config/nvim/custom
"

let s:path = expand('<sfile>:p:h')
exe 'source ' . s:path . '/custom/defaults.vim'
exe 'source ' . s:path . '/custom/nerdtree.vim'
exe 'source ' . s:path . '/custom/strip-whitespaces.vim'


