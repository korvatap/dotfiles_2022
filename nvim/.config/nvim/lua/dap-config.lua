local has_dap, dap = pcall(require, "dap")
if not has_dap then
  vim.notify("Could not require nvim-dap. Exiting dap-config.lua")
  return
end

local home = vim.fn.has('unix') and os.getenv('HOME') or os.getenv('UserProfile')

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = { home .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js' },
}

dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require 'dap.utils'.pick_process,
  },
}
