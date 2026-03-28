" Show absolute line number on the current line
set number
" Show relative numbers on all other lines (great for motion counts)
set relativenumber

" Display width of a tab character
set tabstop=4
" Spaces inserted/deleted when pressing Tab/BS in insert mode
set softtabstop=4
" Spaces used for >> / << indentation; matches tabstop
set shiftwidth=4
" Insert spaces instead of tab characters
set expandtab
" Carry over indentation when starting a new line
set autoindent

" Highlight matches incrementally as you type the pattern
set incsearch
" Persist highlights after search; clear with :noh
set hlsearch
" Case-sensitive only when the pattern contains an uppercase letter
set smartcase

" Briefly jump to the matching bracket when one is inserted
set showmatch
" Duration of that jump, in tenths of a second
set matchtime=2

" Keep at least 7 lines visible above/below the cursor
set scrolloff=7
" Highlight the entire line the cursor is on
set cursorline

" Enable syntax highlighting (preserves existing color overrides)
syntax enable
colorscheme monokai

" Skip redraws during macro/register execution; faster playback
set lazyredraw
" Show completion menu in the command line (e.g. :e <Tab>)
set wildmenu
" Allow switching buffers without saving; keeps undo history intact
set hidden

" Use Verilog highlighting for .v, .vs, and .b files
autocmd BufNewFile,BufRead *.v,*.vs,*.b set syntax=verilog
" Use Python highlighting for Snakefiles
autocmd BufNewFile,BufRead Snakefile    set syntax=python

" Jump to the last known cursor position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" j/k move by visual line in normal mode, but respect counts (e.g. 5j still jumps 5 real lines)
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
