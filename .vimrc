" colemak movements
nnoremap a h
nnoremap r j
nnoremap s k
nnoremap t l
nnoremap A 5h
nnoremap R 5j
nnoremap S 5k
nnoremap T 5l

" replacement keys for colemak movement
nnoremap <leader>m a
nnoremap <leader>M A
nnoremap <leader>r r
nnoremap <leader>R R
nnoremap <leader>+ <c-a>
nnoremap <leader>- <c-x>

" random ones
nnoremap ; :
nnoremap <leader>; $a;
nnoremap <CR> i<CR><esc>

let mapleader = ','
set number
set showcmd
set cmdheight=2
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set backspace=indent,eol,start 
set mouse= 
set incsearch 
set autoindent
set cindent
set nowrap

syntax enable
colorscheme desert

" map tab to esc
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

" vimrc edit and sourcing
nnoremap <leader>vs :so ~/.vimrc <cr>
nnoremap <leader>ve :tabe ~/.vimrc <cr>

" tab opening/movement
nnoremap <leader>e :tabe 
nnoremap <silent><leader>a :tabp <cr>
nnoremap <silent><leader>t :tabn <cr>

" Highlight problem lines: more than 80 chars, trailing spaces, only whitespace
" Toggle with <leader>l
nnoremap <silent> <leader>l
      \ :set nolist!<cr>:set nolist?<cr>
      \ :if exists('w:long_line_match') <bar>
      \ silent! call matchdelete(w:long_line_match) <bar>
      \ unlet w:long_line_match <bar>
      \ elseif &textwidth > 0 <bar>
      \ let w:long_line_match = matchadd('ErrorMsg', '\%>'.&tw.'v.\+', -1) <bar>
      \ else <bar>
      \ let w:long_line_match = matchadd('ErrorMsg', '\%>80v.\+', -1) <bar>
      \ endif<cr>

" Find merge conflict markers
map <leader>fc /\v^[<=>]{7}( .*\|$)<cr>
