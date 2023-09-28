return {
   'tjdevries/colorbuddy.nvim',
    config = function()
        -- nvim-cmp highlight groups.
        local colorbuddy = require("colorbuddy")
        local Color, colors, Group = colorbuddy.setup()

        Color.new('background', '#282c34')
        Color.new('red', '#cc6666')
        Color.new('green', '#99cc99')
        Color.new('yellow', '#f0c674')
        Color.new('pink', '#ffc0cb')
        Color.new('orange', '#ffa500')

        Group.new("CmpItemAbbr", colors.green)
        Group.new("CmpItemAbbrDeprecated", colors.red)
        Group.new("CmpItemAbbrMatchFuzzy", colors.background)
        Group.new("CmpItemKind", colors.pink)
        Group.new("CmpItemMenu", colors.orange)
    end,
    event = "VeryLazy"
}
