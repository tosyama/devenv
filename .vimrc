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
set updatetime=250

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

" dein settings
if &compatible
	set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	call dein#add('Shougo/dein.vim')
	call dein#add('Shougo/vimproc.vim')
	call dein#add('airblade/vim-gitgutter')
	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
syntax on
