filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'jreybert/vimagit'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
call vundle#end()

execute pathogen#infect()

colorscheme crayon

syntax on
set sts=2 ts=2 sw=2 et ai
set nu
set tags=./.tags;/

set directory=$HOME/.vim/swapfiles//

set mouse=a
set clipboard=unnamed

filetype plugin indent on

let g:rustfmt_autosave = 1
let g:lsp_document_highlight_enabled = 0
let g:asyncomplete_auto_popup = 0
let g:lsp_diagnostics_enabled = 0

if executable('rust-analyzer')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'Rust Language Server',
    \ 'cmd': {server_info->['rust-analyzer']},
    \ 'whitelist': ['rust'],
    \ })
endif

nnoremap <F2> :NERDTreeToggle<CR>
