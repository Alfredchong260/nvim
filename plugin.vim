" Plug in
call plug#begin('~/.config/nvim/autoload/plugged')
" Plug 'nvim-telescope/telescope.nvim'

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'racer-rust/vim-racer'
Plug 'vim-scripts/VimIM'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'bfredl/nvim-ipy'

" color scheme
Plug 'gruvbox-community/gruvbox'

" nerd tree
Plug 'preservim/nerdtree'

" autocomplete"
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }


call plug#end()

" coc config

source $HOME/.config/nvim/default_coc.vim

" Colorscheme
colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'


" NerdTree
let NERDTreeQuirOnOpen=1
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Show hidden files in NerdTree buffer.
function! ConnectToPipenvKernel()
  let l:kernel = system('echo "ipykernel_$(basename "$(pwd)")" | tr -d "\n"')
  call IPyConnect('--kernel', l:kernel, '--no-window')
endfunction

command! -nargs=0 RunQtConsole
  \call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")

let g:ipy_celldef = '^##' " regex for cell start and end

nmap <silent> <leader>jqt :RunQtConsole<Enter>
nmap <silent> <leader>jk :ConnectToPipenvKernel<Enter>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)

