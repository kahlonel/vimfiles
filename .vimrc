set noexpandtab
set tabstop=4
set shiftwidth=4

set rnu
set cursorline

set title

syntax enable

set termguicolors
colorscheme lucario

set visualbell
set noerrorbells
set nobackup
set nowritebackup
set noswapfile
set laststatus=2

set colorcolumn=80

set winwidth=84
set nowrap
set mouse=a

set hlsearch
set incsearch
set ignorecase

match ErrorMsg '\s\+$'

set backspace=indent,eol,start

set clipboard=unnamed
set so=3

let mapleader=','

:inoremap jj <ESC>
:nnoremap ; :
nmap <leader>, :w<cr>
nmap <leader>q :q<cr>

map <silent> <leader>f :wincmd l<cr>
map <silent> <leader>a :wincmd h<cr>
map <silent> <leader>s :wincmd j<cr>
map <silent> <leader>d :wincmd k<cr>
map <leader>. :rightbelow vertical new<cr>
tnoremap <leader>f <C-\><C-n>:wincmd l<cr>
tnoremap <leader>a <C-\><C-n>:wincmd h<cr>

nmap <space> 10j
nmap 0 10k
nmap <S-h> ^
nmap <S-l> $

nmap <silent> <S-e> :vertical resize +10<cr>
nmap <silent> <S-s> :vertical resize -10<cr>

let g:server="userver"
let g:folder=getcwd()

function Rsync()
	if exists("g:server")
		if exists("g:folder")
			let cmd="rsync -avz " . g:folder . " " . g:server . ":~/"
			execute "!" . cmd
			echo "Transfer done!"
		else
			echo "No folder defined"
		endif
	else
		echo "No server defined"
	endif
endfunction

nmap <leader>b :call Rsync()<cr>

set cindent

filetype plugin indent on

