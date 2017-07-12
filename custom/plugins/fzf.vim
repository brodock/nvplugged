if janus#is_plugin_enabled("fzf")
  nnoremap <expr> <c-p> (&ft =~ 'nerdtree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
endif
