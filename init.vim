call plug#begin()

"nerd tree
Plug 'scrooloose/nerdtree'

"backrounds
Plug 'morhetz/gruvbox'



" Coc <3
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" JS
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

" Airline for the tabs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'


" Syntax Check
Plug 'vim-syntastic/syntastic'


" Navigation tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'


""" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'




" Syntax Check
Plug 'vim-syntastic/syntastic'

" Markdown Support
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Ctags
Plug 'ludovicchabant/vim-gutentags'

" Unpaired
Plug 'tpope/vim-unimpaired'

" One dark theme
Plug 'joshdick/onedark.vim'

" Comments
Plug 'tomtom/tcomment_vim'

" Best plugin ever
Plug 'tpope/vim-surround'

" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'


" Ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'ngmy/vim-rubocop'
Plug 'thoughtbot/vim-rspec'
Plug 'janko-m/vim-test'


" Run code with ,r
Plug 'xianzhon/vim-code-runner'

" Vim end-wise
Plug 'tpope/vim-endwise'

cal plug#end()




" Indent Stuff

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

""" Ruby Stuff
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

" Syntax highlighting and theme
syntax enable


" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/



"setting
syntax enable

set number
set relativenumber
set background=dark
set mouse=a
set ignorecase



colorscheme gruvbox



"settings save file and closed windown
nnoremap <C-s> :w! <cr>
nnoremap <C-q> :q! <cr>
nnoremap <C-o> :NERDTreeToggle <cr>
nnoremap <F12> :PlugInstall <cr>
nnoremap <C-p> :FZF <cr>
nnoremap <C-b> :vs <cr>



"Config airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1


" Tabs for
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'


" Change tabs with , + 1...9
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Change tabs with ALT + 1...9
nmap <M-1> <Plug>AirlineSelectTab1
nmap <M-2> <Plug>AirlineSelectTab2
nmap <M-3> <Plug>AirlineSelectTab3
nmap <M-4> <Plug>AirlineSelectTab4
nmap <M-5> <Plug>AirlineSelectTab5
nmap <M-6> <Plug>AirlineSelectTab6
nmap <M-7> <Plug>AirlineSelectTab7
nmap <M-8> <Plug>AirlineSelectTab8
nmap <M-9> <Plug>AirlineSelectTab9


"Open terminal with F4

let g:term_buf = 0
function! Term_toggle()
  1wincmd w
  if g:term_buf == bufnr("")
    setlocal bufhidden=hide
    close
  else
    topleft vnew
    try
      exec "buffer ".g:term_buf
    catch
      call termopen("zsh", {"detach": 1 })
      let g:term_buf = bufnr("")
    endtry
    startinsert!
  endif
endfunction


" Exit from terminal
:tnoremap <F5> <C-\><C-n>


