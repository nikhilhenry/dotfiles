let mapleader = " "
" lua config calls
lua require('plugins')
lua require('statusline')
lua require('keymaps')
lua require('lsp')
lua require('ts')

" appearance 
colorscheme gruvbox
set termguicolors
set colorcolumn=80
set signcolumn=yes
highlight Normal guibg=none
highlight ColorColumn guibg=DarkRed ctermbg=246
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set guicursor=n-v-c-i:block

" editor settings text
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=8

" line number settings
set relativenumber
set number

" search settings
set nohlsearch
set nohidden

" general editor settings
set noerrorbells
set nowrap
set nowrap
set noswapfile
set nobackup
set incsearch
set scrolloff=8

" autocomplete settings
set completeopt=menu,menuone,noselect
