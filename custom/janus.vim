" Few functions backported from janus to make easy to port their customizations
"------------------------------------------------------------------------------

" Mapping function
"
" @param [String] The plugin name
" @param [String] The mapping command (map, vmap, nmap or imap)
" @param [String] The mapping keys
" @param [String]* The mapping action
function! janus#add_mapping(name, mapping_command, mapping_keys, ...)
  if len(a:000) < 1
    throw "The arguments to janus#add_mapping() should be <name> <mapping_command> <mapping_keys> <mapping_action> [mapping_action]*"
  endif

  if plugged#is_plugin_enabled(a:name)
    let mapping_command = join(a:000)
  else
    let mapping_command = "<ESC>:echo 'The plugin " . a:name . " is not loaded.'<CR>"
  endif

  let mapping_list = [a:mapping_command, a:mapping_keys, mapping_command]
  exe join(mapping_list)
endfunction

" Check if plugin is enabled (COMPATIBILITY MODE)
" You should use plugged#is_plugin_enabled instead.
"
" @param [String] The plugin name
function! janus#is_plugin_enabled(name)
  return plugged#is_plugin_enabled(a:name)
endfunction
