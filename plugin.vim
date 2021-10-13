call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" color scheme
Plug 'gruvbox-community/gruvbox'

" nerd tree
Plug 'preservim/nerdtree'

" autocomplete"
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

call plug#end()


" Colorscheme
colorscheme gruvbox

if (has("termguicolors"))
    set termguicolors
endif

" NerdTree
let NERDTreeQuirOnOpen=1
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Show hidden files in NerdTree buffer.
function! ConnectToPipenvKernel()
  let l:kernel = system('echo "ipykernel_$(basename "$(pwd)")" | tr -d "\n"')
  call IPyConnect('--kernel', l:kernel, '--no-window')
endfunction

" coc config

source $HOME/.config/nvim/plug_config/default_coc.vim
