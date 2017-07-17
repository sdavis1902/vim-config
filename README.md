# My Vim Configuration

My Vim configuration, so I can easily clone it to any remote machine I happen to be workign on

## Install

``` bash
git clone https://github.com/sdavis1902/vim-config ~/.vim
cd ~/.vim
mkdir bundle
cd bundle
git clone https://github.com/VundleVim/Vundle.vim.git
ln -s ~/.vim/vimrc ~/.vimrc
```

After that, open vim and use command :PluginInstall

for any projects that you want to run ctags, copy ctags_laravel to project_root/.ctags

I also like to use the [this](https://github.com/Mayccoll/Gogh) terminal color scheme installer to install one light theme
