set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=0
set hidden
set autoindent
set smartindent
set nowrap
"set number
set noswapfile
set autoread
set ambiwidth=double
set t_Co=256
set updatetime=250

nnoremap L 3zl
nnoremap H 3zh
nnoremap J 5j
nnoremap K 5k
nnoremap c x
nnoremap <Space>j J
nnoremap <Space>r :redraw!<CR>:redraw!<CR>:redraw!<CR>
nnoremap <Space>p "0p
nnoremap <Space>mk :wa<CR>:mak<CR>
nnoremap <Space>ww :wa<CR>
nnoremap <Space>b <C-^>
nnoremap <Space>f :b<Space>

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
	call dein#add('Shougo/vimproc.vim', {'build': 'make'})
	call dein#add('Shougo/neocomplcache')
	call dein#add('airblade/vim-gitgutter')
	call dein#add('leafgarland/typescript-vim')
	call dein#add('w0ng/vim-hybrid')
	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

set background=dark
colorscheme hybrid
set cursorline
syntax on
let g:neocomplcache_enable_at_startup = 1
