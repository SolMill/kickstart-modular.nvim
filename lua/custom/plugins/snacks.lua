return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    terminal = {
      win = {
        position = 'float',
        direction = 'float',
      },
    },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
   ▄   ▄███▄   ████▄     ▄    ▀ █▀▄▀█
    █  █▀   ▀  █   █      █  ▄█ █ █ █
██   █ ██▄▄    █   █ █     █ ██ █   █
█ █  █ █▄   ▄▀ ▀████  █    █ ▐█ █   █
█  █ █ ▀███▀           █  █   ▐     █
█   ██                  ██          ▀]],
      },
      sections = {
        { section = 'header', padding = 2 },
        { section = 'keys', padding = 2 },
        { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 2 },
        { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 2 },
        { section = 'startup' },
      },
    },
  },
  keys = {
    {
      '\\',
      function()
        Snacks.terminal()
      end,
      desc = 'Toggle Terminal',
      mode = { 'n' },
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
