" Show line numbers
:set number

" Set a custom color scheme
let base16colorspace=256
" let g:solarized_base16=1
source ~/.vimrc_background

" gui colors if running iTerm
if $TERM_PROGRAM =~ "iTerm"
    set termguicolors
endif

" Use . on multiple lines in visual mode
vnoremap . :norm.<CR>

" Turn off auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Use ZSH
set shell=zsh

" Allow project-specific vimrcs
set exrc
set secure

" Move cursor by display lines when wrapping
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

" Use relative numbers
set relativenumber

" Set shiftwidth based on filetype
autocmd FileType lua setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Use 100 column width, don't automatically wrap for text-based files.
set tw=100
autocmd bufreadpre *.txt setlocal fo-=t
autocmd bufreadpre *.md setlocal fo-=t

" Make all yanking/deleting operations automatically copy to the system clipboard
set clipboard=unnamed

" Use <leader>r to view current buffer in NERDTree
map <leader>r :NERDTreeFind<cr>
