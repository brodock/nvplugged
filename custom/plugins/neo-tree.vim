if janus#is_plugin_enabled("neo-tree.nvim")
  " Default mapping, <leader>n
  call janus#add_mapping('neo-tree.nvim', 'map', '<leader>n', ':Neotree<CR>')
endif
