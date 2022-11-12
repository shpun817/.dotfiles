vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

require("tokyonight").setup({
    styles = {
        comments = { italic = false }
    }
})
vim.cmd("colorscheme tokyonight")
