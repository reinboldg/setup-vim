# Setup Vim

Le script `setup.sh` permet d'installer ma configuration de Vim.

En plus du fichier `vimrc`, les plugins suivants sont installés.

[pathogen](https://github.com/tpope/vim-pathogen) : permet de charger
automatiquement les plugins présents dans le répertoire `~/.vim/bundle`

[gitgutter](https://github.com/airblade/vim-gitgutter) : permet de visualiser
les changements d'un fichier versionné avec Git

[nerdtree](https://github.com/preservim/nerdtree) : permet d'explorer
facilement le système de fichiers

[lightline](https://github.com/itchyny/lightline.vim) : affiche plus
d'informations dans la barre d'état

## Prérequis

- curl
- git
- vim

## Usage

Le script n'écrase pas une installation existante.

```
git clone https://github.com/reinboldg/setup-vim.git setup-vim
sh setup-vim/setup-vim.sh
rm -rf setup-vim
```

L'option `-lite` permet d'installer une configuration allégée que j'utilise
généralement avec le compte `root`.

```
sh setup-vim/setup-vim.sh -lite
```
