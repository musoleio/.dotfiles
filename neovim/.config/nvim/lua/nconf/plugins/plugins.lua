local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug 'https://github.com/rafi/awesome-vim-colorschemes' 
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/nerdtree' 
Plug 'gruvbox-community/gruvbox'
Plug 'ThePrimeagen/vim-be-good'

--LSP--
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

--CMP--
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

--Telescope--
Plug 'nvim-lua/plenary.nvim'
Plug "nvim-lua/popup.nvim"
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

--Treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

--Emmet--
Plug 'mattn/emmet-vim'

--Vim-closetag--
Plug 'alvan/vim-closetag'

--Commenting stuff out--
Plug 'tpope/vim-commentary'

Plug 'jiangmiao/auto-pairs'

vim.call("plug#end")

vim.cmd [[
    source $HOME/.config/nvim/lua/nconf/plugins/vim-closetag.vim
    colorscheme gruvbox
    highlight Normal guibg=none
]]

