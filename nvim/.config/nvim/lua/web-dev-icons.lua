local has_dev_icons, dev_icons = pcall(require, "nvim-web-devicons")
if not has_dev_icons then
  vim.notify("Could not require nvim-web-devicons. Exiting web-dev-icons.lua")
    return
end

dev_icons.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 --override = {
  --zsh = {
    --icon = "",
    -- color = "#428850",
    --name = "Zsh"
  --}
-- }
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 --default = true;
}
