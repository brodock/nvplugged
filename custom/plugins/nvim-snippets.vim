if janus#is_plugin_enabled("nvim-snippets")
  lua <<EOF
    local snippets = require 'Snippets'

    snippets.setup({
      friendly_snippets = true
    })
EOF
endif
