set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=0
set autoindent
set smartindent
set nowrap
set number
set noswapfile
set autoread
set ambiwidth=double
set t_Co=256

nnoremap L 3zl
nnoremap H 3zh
nnoremap J 5j
nnoremap K 5k
nnoremap <Space>j J
nnoremap <Space>r :redraw!<CR>
nnoremap <Space>p "0p
nnoremap <Space>mk :w<CR>:mak<CR>
nnoremap <Space>ww :w<CR>

inoremap () ()<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
