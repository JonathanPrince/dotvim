# .vim
Vim config using submodules and native packages

## Setup on new machine

1. Clone repo to home directory
2. Create symbolic link for .vimrc
3. init submodules

```
cd ~
git clone http://github.com/jonathanprince/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

## Adding new modules
```
cd ~/.vim
git submodule add https://github.com/User/plugin-name.git pack/plugins/start/plugin-name
```

## Updating submodules
```
git submodule foreach git pull origin master
git add .
git commit -m "update submodules"
```
