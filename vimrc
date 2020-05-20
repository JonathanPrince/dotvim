packadd! onedark.vim
filetype plugin indent on
syntax on
if (has("termguicolors"))
  set termguicolors
endif
colorscheme onedark

set number
set list
set listchars=tab:»\ ,space:·,trail:·,nbsp:·,eol:¬
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab
set showmatch
set autoindent
set laststatus=2

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
" == close when no other buffers are open ==
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap ,n :NERDTreeFind<CR>

let g:ale_linters = {'javascript': ['standard']}
