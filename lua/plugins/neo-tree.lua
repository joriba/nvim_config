return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window = opts.window or {}
    opts.window.mappings = opts.window.mappings or {}

    opts.window.mappings["Tg"] = {
      function()
        local neo_manager = require "neo-tree.sources.manager"
        local state = neo_manager.get_state("filesystem", nil, vim.api.nvim_get_current_win())
        local path = state and state.path
        require("astrocore").toggle_term_cmd { cmd = "lazygit", direction = "float", cwd = path }
      end,
      desc = "ToggleTerm lazygit",
    }
  end,
}
