syntax on
filetype on


set clipboard=unnamedplus
set exrc
set guicursor
set complete+=kspell
set completeopt=menuone,longest
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set smartcase
set nowrap
set mouse=a
set hlsearch
set incsearch
set scrolloff=8
set signcolumn=yes
set termguicolors
set encoding=UTF-8
set number relativenumber
set splitbelow splitright
set hidden
set fdm=indent
set foldlevelstart=99
set ignorecase
set dictionary+=/usr/share/dict/words
set colorcolumn=80

command! -nargs=0 RunQtConsole
  \call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")

let g:ipy_celldef = '^##' " regex for cell start and end

nmap <silent> <leader>jqt :RunQtConsole<Enter>
nmap <silent> <leader>jk :IPython<Space>--existing<Space>--no-window<Enter>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/plug_config/default_coc.vim
source ~/.config/nvim/key.vim
source ~/.config/nvim/airline.vim
