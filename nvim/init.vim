set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set ignorecase
set smartcase
set background=dark

call plug#begin('~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'sainnhe/gruvbox-material'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'ThePrimeagen/harpoon'

call plug#end()

" vue

" can't see any differences:
" autocmd BufRead,BufNewFile *.vue setfiletype html
" enable closetag in vue files
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
" make vue files close xhtml tags
let g:closetag_xhtml_filetypes = 'xhtml,jsx,vue'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Gruvbox plugin config "
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

lua <<EOF
require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  },
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true
  },
  textobjects = {
    enable = true
  },
  context_commentstring = {
    enable = true
  }
}
EOF

" Emment plugin config "
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue EmmetInstall
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_settings = {
\  'html' : {
\    'block_all_childless' : 1,
\  },
\}

let mapleader = " "

if exists("*mkdir") "auto-create directories for new files
  au BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')
endif

