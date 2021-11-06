" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Intellisense with COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Vim commentary
    Plug 'tpope/vim-commentary'
    
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Startify Project Manager
    Plug 'mhinz/vim-startify'

    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Which key
    Plug 'liuchengxu/vim-which-key'

    " One Dark theme
    Plug 'joshdick/onedark.vim'

    "Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
call plug#end()
