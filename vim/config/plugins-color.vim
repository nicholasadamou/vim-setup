" @file plugins-color.vim
" @brief Plugins for syntax highlighting, color schemes, and other miscellaneous
" small visual things.
"===============================================================================

" Enable syntax highlighting.
syntax on
syntax enable

"-------------------------------------------------------------------------------
" vim-polyglot: Generic Language Support
"-------------------------------------------------------------------------------
Plugin 'sheerun/vim-polyglot'

"-------------------------------------------------------------------------------
" Syntastic: Syntax checking on file save, it's a lifesaver for the small
" mistakes I make all the time.  Will alert me to mistakes before compilation.
"-------------------------------------------------------------------------------
Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'

" Nicer symbols in the gutter
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

let g:syntastic_javascript_checkers = ['eslint']

" LaTeX warnings are very prolific, so it's not too helpful to have on all the
" time.
augroup beziSyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

" Inform Syntastic which checkers to use based on file types.
" https://github.com/scrooloose/syntastic#faq

let g:syntastic_javascript_checkers = [ 'eslint' ]

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Disable syntax checking by default.

let g:syntastic_mode_map = {
    \ "active_filetypes": [],
    \ "mode": "passive",
    \ "passive_filetypes": []
\}

" ----------------------------------------------------------------------
" | Plugins - Vim-Airline-Themes                                       |
" ----------------------------------------------------------------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_theme='gruvbox'

let g:airline_powerline_fonts = 0

" ----------------------------------------------------------------------
" | Color Scheme                                                       |
" ----------------------------------------------------------------------
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

" Enable full-color support.
set t_Co=256

" Use colors that look good
" on a dark background.
set background=dark

" Set custom configurations for when the
" Solarized theme is used from Vim's Terminal mode.
"
" http://ethanschoonover.com/solarized/vim-colors-solarized#advanced-configuration

if !has("gui_running")
    let g:solarized_contrast = "high"
    let g:solarized_termcolors = 256
    let g:solarized_termtrans = 1
    let g:solarized_visibility = "high"
endif

" Since the colorscheme is in a plugin, it may not always be there at first, so
" we put it into a try-catch
try
    " A nice dark color scheme that's easy on the eyes
    colorscheme gruvbox
catch
    " Don't do anything, just supress the 'colorscheme doesn't exist' error.
endtry

" ----------------------------------------------------------------------
" | Status Line                                                        |
" ----------------------------------------------------------------------
Plugin 'itchyny/lightline.vim'

" Always show statusbar
set laststatus=2
set noshowmode

" set lightline to include git-branch
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ,
      \             [ 'venv', 'readonly'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \    'venv': 'virtualenv#statusline'
      \ },
      \ }