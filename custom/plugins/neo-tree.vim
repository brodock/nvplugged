if janus#is_plugin_enabled("neo-tree.nvim")
  " Default mapping, <leader>n
  call janus#add_mapping('neo-tree.nvim', 'map', '<leader>n', ':Neotree toggle<CR>')
  call janus#add_mapping('neo-tree.nvim', 'map', '<leader>b', ':Neotree toggle show buffers right<CR>')
  call janus#add_mapping('neo-tree.nvim', 'map', '<leader>s', ':Neotree float git_status<CR>')

  let g:neo_tree_remove_legacy_commands = 1

  augroup AuNeoTreeCmd
  autocmd AuNeoTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))

  " If the parameter is a directory, cd into it
  function! s:CdIfDirectory(directory)
    let explicitDirectory = isdirectory(a:directory)
    let directory = explicitDirectory || empty(a:directory)

    if explicitDirectory
      exe "cd " . fnameescape(a:directory)
    endif

    " Allows reading from stdin
    " ex: git diff | nvim -R -
    if strlen(a:directory) == 0
      return
    endif

    if directory
      Neotree
      wincmd p
      bd
    endif

    if explicitDirectory
      wincmd p
    endi
  endfunction
endif
