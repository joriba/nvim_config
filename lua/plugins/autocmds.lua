vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    local checktime_group = vim.api.nvim_create_augroup("checktime", { clear = true })

    -- Add a new FocusGained autocmd that runs checktime only if NOT in command window
    vim.api.nvim_create_autocmd("FocusGained", {
      callback = function()
        local buftype = vim.bo.buftype
        local filetype = vim.bo.filetype

        -- Skip checktime in command-line window or prompt buffer
        if buftype == "nofile" or filetype == "vim" then return end

        vim.cmd "checktime"
      end,
      group = checktime_group,
      desc = "Run checktime on FocusGained except in command window",
    })
  end,
})

return {}
