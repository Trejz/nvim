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
}

