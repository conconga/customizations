"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/.vimrc
"
" This file is based on a old version of https://github.com/shumphrey/vimrc
" I have used this vimrc for many years, but now I want to give the
" right credits to the author, which I suppose is shumphrey. 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" get out of horrible vi-compatible mode
set nocompatible

" detect the type of file
filetype on

" how many lines of history to remember
set history=1000

" ask what to do about unsaved/read-only files
set confirm

" load filetype plugins
filetype plugin on

" load indent files for specific filetypes
filetype indent on

" save global variables that consists of upper case letters
set viminfo+=!

" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#,-

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" we are using a dark background
set background=dark

" syntax highlighting on
" The ":syntax enable" command will keep your current color settings.  This
" allows using ":highlight" commands to set your preferred colors before or
" after using this command.  If you want Vim to overrule your settings with the
" defaults, use: :syntax on
syntax on
syntax enable

" Load color scheme from ~/.vim/colors
" http://www.vim.org/scripts/script.php?script_id=985
" # colorscheme metacosm
colorscheme turbo
colorscheme torte
"colorscheme koehler
"colorscheme maroloccio

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" make backup file
" set backup

" where to put backup file (don't forget to make a backup directory)
" set backupdir=./.backup,~/.backup,.,/tmp

" directory is the directory for temp file
set directory=.,~/tmp,/var/tmp,/tmp

" Name of the errorfile for the :make command
set makeef=make.err

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" number of pixel lines inserted between characters
set linespace=0

" command-line completion operates in an enhanced mode
set wildmenu

" Complete longest common string, then each full match
set wildmode=longest,full

" Show the line and column number of the cursor position
set ruler

" Cursor line
"set cursorline

" Number of screen lines to use for the command-line
set cmdheight=2

" Print the line number in front of each line
set number

" do not redraw while running macros (much faster) (LazyRedraw)
set lazyredraw

" buffer becomes hidden when it is abandoned
set hidden

" make backspace work normal (indent, eol, start)
set backspace=2

" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l

" use mouse everywhere
set mouse=a

" shortens messages to avoid 'press a key' prompt
set shortmess=atI

" tell us when any line is changed via : commands
set report=0

" don't make noise on error messages
set noerrorbells

" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" show matching brackets for a moment
set showmatch

" how many tenths of a second to blink matching brackets for
set matchtime=2

" do not highlight searched phrases
set nohlsearch

" but do highlight as you type you search phrase
set incsearch

" what to show when I hit :set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" 30 lines tall
"set lines=30

" 100 cols wide
" set columns=100

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=5

" don't blink
set novisualbell

" When nonempty, this option determines the content of the status line
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"set statusline=\{%lx%c(%p%%)\}\ %m%f%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]
set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

" always show the status line
set laststatus=2

" show commands in command mode
set showcmd

" set scroll number of lines:
set scroll=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" how automatic formatting is to be done
" set formatoptions=tcrqn

" take indent for new line from previous line
set autoindent

" smart autoindenting for C programs
set smartindent

" do c-style indenting
set cindent

" tab spacing (settings below are just to unify it)
set tabstop=4

" unify
set softtabstop=4

" unify
set shiftwidth=4

" turn TAB into space:
set expandtab

" real tabs please!
"set noexpandtab

" do not wrap lines
set nowrap

" use tabs at the start of a line, spaces elsewhere
"set smarttab

" vim modelines
set modeline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
" Enable folding, but by default make it act like folding is off, because
" folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on folding
set foldenable

" Make folding indent sensitive
set foldmethod=indent

" Don't autofold anything (but I can still fold manually)
set foldlevel=100

" don't open folds when you search into them
set foldopen-=search

" don't open folds when you undo stuff
set foldopen-=undo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spelling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spellfile=/kruk/linux/vim/spellfiles/spellfile.utf8.add

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" should I split vertically
"let g:explVertical=1

" width of 35 pixels
"let g:explWinSize=35

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Win Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" How wide should it be( pixels)
"let g:winManagerWidth=35

" What windows should it
"let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" right arrow (normal mode) switches buffers  (excluding minibuf)
" map <right> <ESC>:MBEbn<RETURN>

" left arrow (normal mode) switches buffers (excluding minibuf)
" map <left> <ESC>:MBEbp<RETURN>

" up arrow (normal mode) brings up a file list
"map <up> <ESC>:Sex<RETURN><ESC><C-W><C-W>

" down arrow  (normal mode) brings up the tag list
"map <down> <ESC>:Tlist<RETURN>

" alt-i (normal mode) inserts a single char, and then switches back to normal
" map <A-i> i <ESC>r

" map <F2> <ESC>ggVG:call SuperRetab()<left>

" encypt the file (toggle)
" map <F12> ggVGg?

" to write
map :Wq :wq

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ensure every file does syntax highlighting (full)
" autocmd BufEnter * :syntax sync fromstart

" all my .asp files ARE jscript
" au BufNewFile,BufRead *.asp :set ft=aspjscript

" all my .tpl files ARE html
" au BufNewFile,BufRead *.tpl :set ft=html

" all my .tpl files ARE html
" au BufNewFile,BufRead *.hta :set ft=html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
" iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stuff I have decided I don't like
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ignore case sensitivity on search patterns
" set ignorecase

" show chars on end of line, white spaces, tabs, etc
" set list

" having it auto maximize the screen is annoying
" autocmd GUIEnter * :simalt ~x

" switch to current dir (breaks some scripts)
" autocmd BufEnter * :lcd %:p:h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap:

" quickfix:
if &diff
	map <F9> [c
	map <F10> ]c
else
	map <F9> :cN<CR>
	map <F10> :cn<CR>
endif

" buffer list:
map <S-F11> :ls<CR>

" open a PDF under cursor (requires plugin Explorer):
map <F2> :!okular <cWORD> &:sleep 2\be

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setting console number of colors:
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load local ./vimrc
" (some projects might have different mappings or settings)
if filereadable("./vimrc")
 source ./vimrc
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Octave syntax
augroup filetypedetect
 au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END

" Use keywords from Octave syntax language file for autocomplete
if has("autocmd") && exists("+omnifunc")
   autocmd Filetype octave
   \ if &omnifunc == "" |
   \ setlocal omnifunc=syntaxcomplete#Complete |
   \ endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN: vim-dict (install curl)

let g:dict_hosts = [["localhost", ["*"]]]
let g:dict_leave_pw = 0
let g:dict_curl_command = "curl"
map \d :Dict<CR>
map \D :Dict

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight a line with ##### marks
let @t = ":s/[[:blank:]]*$//I-- ^vlr#A ##O500A jhlkv0r#j^kv0r ^hr#ElDyyjp"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrolling, nicer scrolling when wrapping
set sidescroll=1
set sidescrolloff=10
set scrolloff=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
