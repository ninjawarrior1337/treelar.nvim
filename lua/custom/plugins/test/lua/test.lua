local M = {}

M.setup = function()
  vim.api.nvim_create_user_command('Test', function()
    local pickers = require 'telescope.pickers'
    local finders = require 'telescope.finders'
    local themes = require 'telescope.themes'
    local conf = require('telescope.config').values

    pickers
      .new({}, {
        prompt_title = 'colors',
        finder = finders.new_table {
          results = { 'red', 'green', 'blue' },
        },
        sorter = conf.generic_sorter {},
      })
      :find()
  end, {})
end

return M
