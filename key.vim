" Keybindings
let mapleader=" "
let maplocalleader=" "
imap jj <ESC>

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
nnoremap <leader>c :wq<CR>

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

let g:racer_cmd = "/home/user/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1
augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END


if executable('rg')
    let g:rg_derive_root='true'
endif

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25


fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup ALFRED
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

augroup exe_code
    autocmd!

    " execute python code
    autocmd FileType python nnoremap <buffer> <localleader>r
                \ :sp<CR> :term python3 %<CR> :startinsert<CR>

augroup END
