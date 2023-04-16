
-- Set the default size and position of the terminal window
vim.g.toggleterm_size = 50
vim.g.toggleterm_direction = 'horizontal'

-- Use a specific terminal program (e.g. fish)
vim.g.toggleterm_terminal = 'fish'

-- Enable automatic closing of the terminal window on exit
vim.g.toggleterm_close_on_exit = true

-- Use a specific command to open the terminal window
vim.g.toggleterm_key = '<C-t>'

-- Create mappings to toggle the terminal window
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('t', '<leader>t', '<C-\\><C-n>:ToggleTerm<CR>', {noremap=true, silent=true})

-- Define specific terminal windows with custom settings
require("toggleterm").setup{
  -- Define a floating terminal window for debugging
  terminal_float = {
    direction = 'float',
    width = 0.9,
    height = 0.5
  },

  -- Define a terminal window for running tests
  terminal_test = {
    direction = 'horizontal',
    cmd = 'pytest',
    size = 10
  }
}
