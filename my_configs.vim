" Show line numbers
:set number

" Set a custom color scheme
let base16colorspace=256
" let g:solarized_base16=1
source ~/.vimrc_background

" Use . on multiple lines in visual mode
vnoremap . :norm.<CR>

" Scss folding
autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}

" Turn off auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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

" Set default textwidth to 0 (disable word wrapping)
set tw=0

" Make all yanking/deleting operations automatically copy to the system clipboard
set clipboard=unnamed

" Use <leader>r to view current buffer in NERDTree
map <leader>r :NERDTreeFind<cr>

" Use 100 column width
set tw=100

