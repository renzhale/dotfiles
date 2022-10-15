:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

" Environment
Plug 'vim-airline/vim-airline' " Airline customizable statusbar
Plug 'vim-airline/vim-airline-themes' " Airline statusbar themes
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" Syntax Highlighting
Plug 'yuezk/vim-js'
Plug 'tpope/vim-commentary'

" Goyo & Limelight
Plug 'junegunn/goyo.vim' " Goyo plugin
Plug 'junegunn/limelight.vim' " Limelight plugin

" Colorscheme & UI
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'ryanoasis/vim-devicons'
Plug 'lambdalisue/nerdfont.vim'

call plug#end()

set encoding=UTF-8

:colorscheme jellybeans

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-g> :Goyo<CR>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:limelight_conceal_ctermfg = 240
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


