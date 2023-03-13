if janus#is_plugin_enabled("neo-tree.nvim")
  " Default mapping, <leader>n
  call janus#add_mapping('neo-tree.nvim', 'map', '<leader>n', ':Neotree toggle<CR>')

  let g:neo_tree_remove_legacy_commands = 1
endif
