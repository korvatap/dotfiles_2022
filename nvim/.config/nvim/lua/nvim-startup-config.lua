local has_nvim_startup, nvim_startup = pcall(require, "nvim-startup")
if not has_nvim_startup then
  return
end

nvim_startup.setup {
    startup_file = '/tmp/nvim-startuptime' -- sets startup log path (string)
}
