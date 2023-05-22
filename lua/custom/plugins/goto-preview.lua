return {
  'rmagatti/goto-preview',
  config = function()
    require('goto-preview').setup {}
  end,
  vim.keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true})
}
