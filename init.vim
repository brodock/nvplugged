let s:path = expand('<sfile>:p:h')

" Load vim-enabled plugins from plugins.vim file
call plug#begin(s:path . '/plugged')
exe 'source ' . s:path . '/plugins.vim'
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

exe 'source ' . s:path . '/custom/defaults.vim'
exe 'source ' . s:path . '/custom/nerdtree.vim'
exe 'source ' . s:path . '/custom/strip-whitespaces.vim'

