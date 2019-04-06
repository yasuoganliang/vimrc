# vimrc
* 因为电脑很卡，懒得装其他编辑器
* 当然 vim 用着越来越方便
* 因此打算自己搞一搞

* 对比了一下，决定使用 `vim-plug` 来管理插件 [仓库地址](https://github.com/junegunn/vim-plug)
* 安装 `vim-plug`
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
* 之后安装格式在 `.vimrc` 中添加插件，运行 `:PlugInstall` 即可安装添加的插件
```
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
call plug#end()
```
