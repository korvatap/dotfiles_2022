local has_tabnine, tabnine = pcall(require, "tabnine")
if not has_tabnine then
  vim.notify("Could not require tabnine. Exiting tabnine-config.lua")
  return
end

tabnine:setup({
  max_lines = 1000;
  max_num_results = 20;
  sort = true;
  run_on_every_keystroke = true;
  snippet_placeholder = '..';
  ignored_file_types = { -- default is not to ignore
    -- uncomment to ignore in lua:
    -- lua = true
  };
  show_prediction_strength = false;
})
