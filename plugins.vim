Bundle "git://github.com/ecomba/vim-ruby-refactoring.git"
Bundle 'git://github.com/derekwyatt/vim-scala'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'davidoc/taskpaper.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-dispatch'

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Remove NERDTree default mapping
unmap gt
unmap g

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>

let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"

map <Leader>rr :call RunCurrentSpecFile()<CR>
map <Leader>rn :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

set relativenumber

" XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax


