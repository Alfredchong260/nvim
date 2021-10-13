" Keybindings
let mapleader=" "
let maplocalleader=" "
imap jj <ESC>
imap jk <ESC>

" jump up 4 line in normal mode
nnoremap <silent> <C-k> :normal 4k<CR>

" jump down 4 line in normal mode
nnoremap <silent> <C-j> :normal 4j<CR>

" jump up 4 line in visual mode
nnoremap <silent> <C-k> :normal gv4k<CR>

" jump down 4 line in visual mode
nnoremap <silent> <C-j> :normal gv4j<CR>

" open config in new tab
nnoremap <leader>nt :tabedit $MYVIMRC<CR>

" Reload config file
nnoremap <leader>sv :source $MYVIMRC<CR>

" Clear search highlights
nnoremap <silent> <leader>c :<C-u>nohlsearch<CR><C-1>

" Navigate between buffers
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>h :bfirst<CR>
nnoremap <leader>l :blast<CR>

" show all buffers and let user choose one
nnoremap <leader>i :ls<CR>:b<Space>

" Delete current buffer
nnoremap <leader>dd :bd<CR>

" Close current window
nnoremap <leader>wq :wq<CR>

" Write current buffer
nnoremap <leader>w :write<CR>

" Navigate between tab
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

" Toggle highlight current line
nnoremap <leader>ar :setlocal cursorline!<CR>

" Toggle highlight current column
nnoremap <leader>ac :setlocal cursorcolumn!<CR>

" Switch between two buffer
nnoremap <leader><tab> <C-^>

" Add current line to X Clipboard
nnoremap <leader>yy :normal "+yy<CR>

" Add current selected text to X Clipboard
xnoremap <leader> :normal gv"+yy<CR>

nnoremap <Space> <Nop>
nnoremap <leader>ts :bel split term://fish<CR>:resize 10<CR>i

augroup exe_code
    autocmd!

    " execute python code
    autocmd FileType python nnoremap <buffer> <localleader>r
                \ :sp<CR> :term python3 %<CR> :startinsert<CR>

augroup END
