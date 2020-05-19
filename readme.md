# .vim
Vim config using submodules and native packages

## Modules
### Color scheme
- onedark

### Plugins
- auto-pairs
- lightline
- nerdtree

### Syntax
- vim-javascript

## Setup on new machine

1. Clone repo to .vim/ in home directory
2. Create symbolic link for .vimrc
3. init submodules

```
cd ~
git clone https://github.com/JonathanPrince/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

## Adding new modules
```
cd ~/.vim
git submodule add https://github.com/User/plugin-name.git pack/plugins/start/plugin-name
```

## Removing modules
```
git submodule deinit pack/plugins/start/plugin-name
git rm pack/plugins/start/plugin-name
rm -Rf .git/modules/pack/plugins/start/plugin-name
git commit
```

## Updating submodules
```
git submodule foreach git pull origin master
git add .
git commit -m "update submodules"
```
