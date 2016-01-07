set runtimepath+=~/Apps/vim-addon-manager "activate the addons called 'vim-addon-manager', 'JSON', 'name1', 'name2' 

" This adds them to runtimepath and ensures that plugin/* and after/plugin/*" files are sourced 
call vam#ActivateAddons(['vim-addon-manager', 'rails', 'fugitive', 'QuickBuf', 'bufexplorer.zip'])

" only support unix (could also be dos,mac)
set ffs=unix,mac,dos

" syntax highlighting on
syntax on

filetype plugin indent on

set paste
set ruler " Always show current positions along the bottom
set noerrorbells " don't make noise
set showmatch " show matching brackets

set mat=5 " how many tenths of a second to blink matching brackets for
set so=3 " Keep 3 lines (top/bottom) for scope
set novisualbell " don't blink

set ai " autoindent
set si " smartindent

set tabstop=2 " tab spacing (settings below are just to unify it)
set expandtab
set softtabstop=2 " unify
set shiftwidth=2 " unify

" Show trailing whitespace (works for me)
set wildmode=longest:full
set wildmenu

set background=dark
colorscheme solarized

" shortcuts
command LI set background=light
command BK set background=dark
command NT NERDTree

" VimClojure settings
let g:vimclojure#HighlightBuiltins=1   " Highlight Clojure's builtins
let g:vimclojure#ParenRainbow=1        " Rainbow parentheses'!
let g:vimclojure#DynamicHighlighting=0 " Dynamically highlight functions
