local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}
M.dap = {
  plugin = true,
  n = {
    ["<leader>dc"] = { "<cmd>lua require('dap').continue()<CR>", "continue" },
    ["<leader>dr"] = { "<cmd>lua require('dap').repl.open()<CR>", "repl" },
    ["<leader>db"] = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", "breakpoint" },
    ["<leader>dl"] = { "<cmd>lua require('dap').run_last()<CR>", "last" },
    ["<leader>ds"] = { "<cmd>lua require('dap').step_over()<CR>", "step over" },
    ["<leader>di"] = { "<cmd>lua require('dap').step_into()<CR>", "step into" },
    ["<leader>do"] = { "<cmd>lua require('dap').step_out()<CR>", "step out" },
    ["<leader>du"] = { "<cmd>lua require('dapui').toggle()<CR>", "toggle ui" },
  }
}
return M
