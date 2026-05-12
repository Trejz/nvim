local cmp = require("cmp")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Nul>"] = cmp.mapping.complete(),
    }),

    sources = {
        { name = "nvim_lsp" },
        { name = "buffer"},
    },
})

local autopairs = require("nvim-autopairs.completion.cmp")

cmp.event:on(
    "confirm_done",
    autopairs.on_confirm_done()
)

require("nvim-autopairs").setup({})

