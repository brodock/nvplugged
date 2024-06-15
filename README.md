# NvPlugged: NVim Distribution

Janus served me well for many years, but it's so damn slow today.

This evolved from a few hours hack project, in which I managed to port
most of the useful plugins and configs from Janus, to the
awesome and super-fast [vim-plug](junegunn/vim-plug).

It then evolved to replacing many components while preserving original ergonomics.

To use this distro, you must install latest [Neovim](https://github.com/neovim/neovim)
which is the secret weapon to enable all the async non-blocking operations
that makes this distro super fast.

## Copy/Paste easy install (OS X)

```sh
git clone https://github.com/brodock/nvplugged.git ~/.config/nvim
nvim +PlugInstall +qall
```
