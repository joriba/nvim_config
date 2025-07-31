local system_yank = { '"*y', desc = "󰆏 Yank (system)" }
local system_paste = { '"*p', desc = "󰆒 Paste (system)" }

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- normal mode
        n = {
          ["<Leader>y"] = system_yank,
          ["<Leader>p"] = system_paste,
        },
        -- visual mode
        v = {
          ["<Leader>y"] = system_yank,
          ["<Leader>p"] = system_paste,
        },
      },
    },
  },
}
