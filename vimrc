execute pathogen#infect()

set background=dark "Palette de couleurs selon le fond
set mouse=n "Activer la souris en mode normal
set showcmd "Afficher la commande dans la barre d'état
set showmatch "Afficher les parenthèses correspondantes
set ignorecase "Insensible à la casse
set smartcase "Recherche intelligente sur la casse
set incsearch "Recherche incrémentale
set hlsearch "Surligné les résultats de recherche
set visualbell "Désactiver le bip
set noerrorbells "Désactiver le bip
set number "Afficher le numéro des lignes
set ruler "Afficher la position du curseur
set nowrap "Ne pas enrouler les lignes longues
set scrolloff=3 "Afficher trois lignes autour du curseur
set backspace=indent,eol,start "Activer le comportement habituel de la touche retour arrière
set expandtab "Insérer des espaces avec la touche tab
set softtabstop=2 "Nb. de colonnes insérées avec la touche tab en mode insert
set tabstop=2 "Nombre de colonnes insérées par tabulation
set shiftwidth=2 "Nombre de colonnes insérées pour la ré-indentation
set autoindent "Indentation automatique
set wildmenu "Activer la complétion
set wildmode=list:longest,list:full "Afficher les possibilités de complétion
set wildignore=*.o,*.r,*.so,*.sl,*.tar,*.tgz "Ignorer certains types de fichiers pour la complétion
"set spell "Activer le correcteur orthographique
set spelllang=en,fr "Définir les langues du correcteur
set spellsuggest=6 "Suggérer jusqu'à six corrections
set laststatus=2 "Toujours activer la barre d'état
set cc=80 "Coloriser la colonne 80
set tabpagemax=100 "Nombre max. de pages pouvant être ouvertes avec l'option -p
set encoding=utf-8 "Encodage des caractères
set termencoding=utf-8 "Encodage des caractères

syntax on "Activer la coloration syntaxique
filetype plugin indent on "Activer les comportements spécifiques aux types de fichiers comme la syntaxe et l'indentation

";; = Echap
:map ;; <Esc>
:imap ;; <Esc>

"Raccourcis permettant de déplacer le curseur entre les différentes vues d'une même fenêtre
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Vim en mode interface graphique
if has("gui_running")
  set background=light
endif

"GitGutter https://github.com/airblade/vim-gitgutter
"Raccourci pour surligner les diff. Git
:map <C-g> :GitGutterLineHighlightsToggle<CR>

"NERDTree https://github.com/scrooloose/nerdtree
let g:netrw_liststyle=3 "Change le style de liste
let g:netrw_banner=0 "Supprime la bannière
let g:netrw_browse_split=4 "Mode d'ouverture des fichiers
let g:netrw_winsize=20 "Taille de la liste en %
let NERDTreeShowHidden=1 "Affiche les fichiers cachés

"Afficher/cacher NERDTree
:map <C-n> :NERDTreeToggle<CR>

call pathogen#helptags()
