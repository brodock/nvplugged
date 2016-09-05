" Distro core functions
"----------------------

" Verifies whether plugin is enabled or not
"
" @param [String] The plugin name
function! plugged#is_plugin_enabled(name)
  let plug = g:plugs[a:name]

  return has_key(plug, 'on')
endfunction

