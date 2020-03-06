if has('python3')
  " Autocomplete
  let g:deoplete#enable_at_startup = 1

  call deoplete#custom#option({
      \ 'auto_complete_delay': 350
      \ })
endif
