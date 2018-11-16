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

if vim 8, need to setup fzf

https://github.com/junegunn/fzf#using-git

Add the following to .bashrc

``` bash
# fzf + ag configuration
if _has fzf && _has ag; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi
```
