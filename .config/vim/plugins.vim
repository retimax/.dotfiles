"""""""""""""""
"   Vim-plug   "
""""""""""""""""

" Loading vim plug (to install plugins) 
if empty(glob('~/.config/vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/vim/plugged')

""""""""""""""""""""""""""""""""
" Declare the list of plugins. "
""""""""""""""""""""""""""""""""
	
" Themes 
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'morhetz/gruvbox'
Plug 'kyoz/purify',{'rtp':'vim'}
Plug 'rakr/vim-one',{'as':'one'}

" Navigation
Plug 'easymotion/vim-easymotion'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'christoomey/vim-tmux-navigator'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Start menu
Plug 'echasnovski/mini.nvim',{'branch':'stable'}

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Icons
Plug 'ryanoasis/vim-devicons'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autopair characters
Plug 'jiangmiao/auto-pairs'

" HTML & CSS plugin
Plug 'mattn/emmet-vim'

" More colors in code
Plug 'jacoborus/tender.vim'
Plug 'sheerun/vim-polyglot'

" See buffs 
Plug 'nanozuki/tabby.nvim'

" Telescope
Plug 'sharkdp/fd' 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Live server
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

" Git incorporation
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
