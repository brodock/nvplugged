" Distro core functions
"----------------------

" Verifies whether plugin is enabled or not
"
" @param [String] The plugin name
function! plugged#is_plugin_enabled(name)
  return has_key(g:plugs, a:name)
endfunction

" Plugged Commands
" ----------------
function! s:define_commands()
  command! -nargs=0 -bar PluggedReload execute ":so $MYVIMRC"
endfunction
call s:define_commands()
