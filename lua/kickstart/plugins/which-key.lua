-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `opts` key (recommended), the configuration runs
-- after the plugin has been loaded as `require(MODULE).setup(opts)`.

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
      -- this setting is independent of vim.opt.timeoutlen
      delay = 0,
      icons = {
        -- set icon mappings to true if you have a Nerd Font
        mappings = vim.g.have_nerd_font,
        -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
        -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
        keys = vim.g.have_nerd_font and {} or {
          Up = '<Up> ',
          Down = '<Down> ',
          Left = '<Left> ',
          Right = '<Right> ',
          C = '<C-…> ',
          M = '<M-…> ',
          D = '<D-…> ',
          S = '<S-…> ',
          CR = '<CR> ',
          Esc = '<Esc> ',
          ScrollWheelDown = '<ScrollWheelDown> ',
          ScrollWheelUp = '<ScrollWheelUp> ',
          NL = '<NL> ',
          BS = '<BS> ',
          Space = '<Space> ',
          Tab = '<Tab> ',
          F1 = '<F1>',
          F2 = '<F2>',
          F3 = '<F3>',
          F4 = '<F4>',
          F5 = '<F5>',
          F6 = '<F6>',
          F7 = '<F7>',
          F8 = '<F8>',
          F9 = '<F9>',
          F10 = '<F10>',
          F11 = '<F11>',
          F12 = '<F12>',
        },
      },

      -- Document existing key chains
      spec = {
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>f', group = '[F]ind' },
        { '<leader>g', group = '[G]it' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
        { 'gra', group = 'Code [A]ction', mode = { 'n', 'v' } },
        { 'grn', group = 'Re[N]ame', mode = { 'n' } },
        { 'gri', group = '[I]mplementation', mode = { 'n' } },
        { 'grr', group = '[R]eferences', mode = { 'n' } },
        { '[a', group = 'Next [a]rgument', mode = { 'n' } },
        { ']a', group = 'Prev [a]rgument', mode = { 'n' } },
        { '[A', group = 'Frst [A]rgument', mode = { 'n' } },
        { ']A', group = 'Last [A]rgument', mode = { 'n' } },
        { '[b', group = 'Next [b]uffer', mode = { 'n' } },
        { ']b', group = 'Prev [b]uffer', mode = { 'n' } },
        { '[B', group = 'Frst [B]uffer', mode = { 'n' } },
        { ']B', group = 'Last [B]uffer', mode = { 'n' } },
        { '[c', group = 'Next [C]hange', mode = { 'n' } },
        { ']c', group = 'Prev [C]hange', mode = { 'n' } },
        { '[d', group = 'Next [d]iagnostic', mode = { 'n' } },
        { ']d', group = 'Prev [d]iagnostic', mode = { 'n' } },
        { '[D', group = 'Frst [D]iagnostic', mode = { 'n' } },
        { ']D', group = 'Last [D]iagnostic', mode = { 'n' } },
        { '[l', group = 'Next [l]ocation', mode = { 'n' } },
        { ']l', group = 'Prev [l]ocation', mode = { 'n' } },
        { '[L', group = 'Frst [L]ocation', mode = { 'n' } },
        { ']L', group = 'Last [L]ocation', mode = { 'n' } },
        { '[m', group = 'Next [m]ethod', mode = { 'n' } },
        { ']m', group = 'Prev [m]ethod', mode = { 'n' } },
        { '[M', group = 'Frst [M]ethod', mode = { 'n' } },
        { ']M', group = 'Last [M]ethod', mode = { 'n' } },
        { '[t', group = 'Next [t]ag', mode = { 'n' } },
        { ']t', group = 'Prev [t]ag', mode = { 'n' } },
        { '[T', group = 'Frst [T]ag', mode = { 'n' } },
        { ']T', group = 'Last [T]ag', mode = { 'n' } },
        { '[q', group = 'Next [q]ickfix', mode = { 'n' } },
        { ']q', group = 'Prev [q]ickfix', mode = { 'n' } },
        { '[Q', group = 'Frst [Q]ickfix', mode = { 'n' } },
        { ']Q', group = 'Last [Q]ickfix', mode = { 'n' } },
        { '[s', group = 'Next [s]pelling misstake', mode = { 'n' } },
        { ']s', group = 'Prev [s]pelling misstake', mode = { 'n' } },
        -- { '[<', group = 'Next [<]', mode = { 'n' } },
        -- { ']<', group = 'Prev [<]', mode = { 'n' } },
        -- { '[(', group = 'Next [(]', mode = { 'n' } },
        -- { '](', group = 'Prev [(]', mode = { 'n' } },
        -- { '[[', group = 'Next [[]', mode = { 'n' } },
        -- { '][', group = 'Prev [[]', mode = { 'n' } },
        -- { '[{', group = 'Next [{]', mode = { 'n' } },
        -- { ']{', group = 'Prev [{]', mode = { 'n' } },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
