"  Show line numbers
:set number

" Set a custom color scheme
set background=dark
colorscheme base16-solarized-dark
let g:airline_theme="papercolor"

" Make git gutter realtime
set updatetime=750

" Hulu filetypes
au BufNewFile,BufRead *.scss set filetype=css
au BufNewFile,BufRead *.hbs,*.hbs.erb set filetype=html
au BufNewFile,BufRead *.json_builder set filetype=ruby

" Use . on multiple lines in visual mode
vnoremap . :norm.<CR>

" Scss folding
autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}

" Turn on GitGutter (with line highlighting) by default
autocmd VimEnter * GitGutterEnable

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

