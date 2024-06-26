set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set copyindent
set colorcolumn=83
set cursorline
set hidden
set hlsearch  
set laststatus=2
set statusline=%#Todo#\ %Y\ 	"file type
set statusline+=%#StatusLineTerm#\ %t\ 	"file name
set statusline+=%#DiffChange#%m	"diff indicator
set statusline+=%#Error#%r	"readonly flag
set statusline+=%#StatusLineTerminal#%=%<%#ToolBarLine#\ %F\ 	"file path
set statusline+=%#StatusLineTerminal#\ col\ %v\ 	"column
set statusline+=%#MatchParen#\ %P\ of\ %L\ 	"position in file
set incsearch
set splitright
set splitbelow
set foldmethod=indent
set foldlevelstart=20
set wildmode=longest,full
set wildignorecase
set hidden
set noswapfile
set nowrap

filetype plugin indent on
au BufRead,BufNewFile *.nlogo set filetype=netlogo

set t_Co=16
color base16-tomorrow-night
set t_md=
syntax on

hi! CursorLineNr cterm=NONE

noremap <space> :
vnoremap <space> :

"cabbrev q qa
abbrev sp vsp
