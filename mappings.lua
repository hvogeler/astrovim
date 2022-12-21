require("user.core.debug")
return {
   n = {
      ["<leader>da"] = { ":lua Attach_to_debug()<CR>", desc = "Attach to debug" },
      --      ['<F5>'] = { ':lua require"dap".continue()<CR>', desc = 'Debug continue' },
      --      ['<F8>'] = { ':lua require"dap".step_over()<CR>', desc = 'Debug step over' },
      --      ['<F7>'] = { ':lua require"dap".step_into()<CR>', desc = 'Debug step into' },
      --      ['<F6>'] = { ':lua require"dap".step_out()<CR>', desc = 'Debug step out' },
      --
      --      ["<leader>db"] = { ':lua require"dap".toggle_breakpoint()<CR>', desc = "Set breakpoint" },
      --      ["<leader>dc"] = { ':lua require"dap".set_breakpoint(vim.fn.input("Condition: "))<CR>',
      --         desc = "Set conditional breakpoint" },
      --      ["<leader>dl"] = { ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log: "))<CR>', desc = 'Set breakpoint' },
      --      ["<leader>dr"] = { ':lua require"dap".repl.open()<CR>', desc = 'Open Repl' },

      ["<leader>rm"] = { function() Run_java_test_method(true) end, desc = 'Debug test method' },
      ["<leader>rc"] = { function() Run_java_test_class(true) end, desc = 'Debug test class' },
      ["<leader>rM"] = { function() Run_java_test_method() end, desc = 'Run test method' },
      ["<leader>rC"] = { function() Run_java_test_class() end, desc = 'Run test class' },

   }
}
