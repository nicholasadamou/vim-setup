" @file plugins-autocomplete.vim
" @brief Plugins related to autocompletion functions.
"===============================================================================

"-------------------------------------------------------------------------------
" YouCompleteMe: Provides the autocomplete engine
"-------------------------------------------------------------------------------
Plugin 'Valloric/YouCompleteMe'

" default to autocomplete on
let g:ycm_filetype_whitelist = { '*': 1 }

" shouldn't autocomplete in documents and special buffers
let g:ycm_filetype_blacklist = {
\   'markdown': 1,
\   'tagbar': 1,
\   'tex': 1,
\   'nerdtree': 1
\}

" defer syntax checker to syntastic, while still providing identifier completion
" This is for c, cpp, objc types
let g:ycm_show_diagnostics_ui = 0

" ----------------------------------------------------------------------
" | Plugins - NeoComplCache                                            |
" ----------------------------------------------------------------------
Plugin 'shougo/neocomplcache.vim'
Plugin 'shougo/neosnippet'
Plugin 'shougo/neosnippet-snippets'

" Enable `neocomplcache` by default.
" https://github.com/Shougo/neocomplcache.vim#installation

let g:neocomplcache_enable_at_startup=1

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `Tab` autocomplete.

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `Shift+Tab` insert `Tab` character.

inoremap <S-TAB> <C-V><TAB>
