" Distro core functions
"----------------------

" Verifies whether plugin is enabled or not
"
" @param [String] The plugin name
function! plugged#is_plugin_enabled(name)
  return has_key(g:plugs, a:name)
endfunction

