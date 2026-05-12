return {
    {
        "folke/tokyonight.nvim"
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "seblyng/roslyn.nvim",
        ---@module "roslyn.config'
        ---@type RoslynNvimConfig
        opts = {}
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        }
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        'nvim-treesitter/nvim-treesitter-context',
        dependencies = { 'nvim-treesitter/nvim-treesitter' }
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons"
    },
    {
	    "neovim/nvim-lspconfig",
    },
    {
        "nvim-tree/nvim-web-devicons",
        opts = {}
    },
    {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },
    {
      "gbprod/yanky.nvim",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    }
}
