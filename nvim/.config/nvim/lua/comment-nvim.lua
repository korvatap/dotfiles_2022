local has_comment, comment = pcall(require, "Comment")
if not has_comment then
  vim.notify("Could not require Comment. Exiting comment-nvim.lua")
  return
end

comment.setup {
  opleader = {
    line = "gc",
    block = "gb",
  },

  mappings = {
    basic = true,
    extra = true,
  },

  toggler = {
    line = "gcc",
    block = "gcb"
  },

  pre_hook = nil,

  post_hook = nil,

  ignore = nil,
}
