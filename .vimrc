
syntax on                      " Syntax highlighting
syntax enable                  " enable syntax
filetype plugin on             " enable plugins (for netrw)
set showmatch                  " Show matching brackets
set ruler                      " Show line number in status bar
" set number                   " Show line numbers
set nocompatible               " vim, not vi
set wildmenu                   " Display all matching files when we tab complete
set backspace=indent,eol,start
set hlsearch
set colorcolumn=80

" searching
set ignorecase
set smartcase

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Default indentation: 4 spaces
set ts=4 sts=4 sw=4 expandtab

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

" Emulate TextMate's shift left/right key commands
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Make Vim more liberal about hidden buffers.
set hidden

" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>

" Set language to english (USA)
set spelllang=en_us

" http://vimcasts.org/episodes/bubbling-text/
" can also install plugin `unimpaired` for better functionality
" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" no backup when editing crontab files
au BufNewFile,BufRead crontab.* set nobackup | set nowritebackup




" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer


" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER
" - This doesn't help if you want a visual list of tags



" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list



" FILE BROWSIN:

" Tweaks for browsing
let g:netrw_banner=0           " disable annoying banner
let g:netrw_browse_split=4     " open in prior window
let g:netrw_altv=1             " open splits to the right
let g:netrw_liststyle=3        " tree view
let g:netrw_winsize=25         " set width of explorer (%)
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open  in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings



" SNIPPETS:

" Read an empty HTML template and move cursor to title
