return {
    'rcarriga/nvim-notify',
    event = "VeryLazy",
    config = function()
        require("notify").setup({
            background_colour = "#123123"
        })
    end
}