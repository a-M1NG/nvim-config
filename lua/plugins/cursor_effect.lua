return {
{
  "karb94/neoscroll.nvim",
  event = "BufRead",
  config = function()
    require("neoscroll").setup({
      mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>" },
      hide_cursor = false,
      stop_eof = true,
      use_local_scrolloff = false,
      pre_hook = nil,
      post_hook = nil,
    })
  end,
}
}