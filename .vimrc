" Blink blink pweease uwu
let &t_EI .= "\<Esc>[1 q"
let &t_SI .= "\<Esc>[1 q"
let &t_SR .= "\<Esc>[1 q"
autocmd VimEnter * normal! :startinsert :stopinsert

"Behave like vim instead of vi
set nocompatible

"Set the color theme to be used
set termguicolors
let ayucolor="mirage"
colorscheme ayu

"Attempt to detect filetype/contents so that vim can autoindent etc
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

"Enable syntax highlighting
syntax on

"Enable switching from an  unsaved buffer without saving it first and keep an undo history for multiple files. Warn when quitting without saving, and keep swap files.
set hidden

"Better command-line completion
set wildmenu

"Show partial commands in the last line of the screen
set showcmd

"Highlight searches (use Ctrl+L to temporarily turn off highlighting)
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>

"Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

"When opening a new line and no filetype-specific indenting is enabled, keep the same indent as the line you're currently on(Useful for READMEs, etc)
set autoindent
set smartindent
set smarttab

"Display the cursor position on the last line of the screen or in the status line of a window
set ruler

"Always display the status line, even if only one window is displayed
set laststatus=2

"Instead of failing a command because of unsaved changes, instead raise a  dialogue asking if you wish to save changed files
set confirm

"Use visual bell instead of beeping when doing something wrong
set visualbell
set t_vb=

"Set the command window height to 2 lines, to avoid many cases of having to press <Enter> to continue
set cmdheight=2

"Display line numbers on the left
set number

"Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

"Set vim airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='ayu_mirage'
set encoding=utf-8
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1

"Enable python syntax highlighting
let g:python_highlight_all = 1

"Tagbar toggle
nnoremap <silent> <F8> :TagbarToggle<CR>

