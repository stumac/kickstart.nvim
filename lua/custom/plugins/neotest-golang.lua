local plugin = {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
      'fredrikaverpil/neotest-golang',
      version = '*',
      dependencies = {
        'leolulz/nvim-dap-go',
      },
    }, -- Installation
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-golang', -- Registration
      },
    }
  end,
  keys = {
    {
      '<leader>td',
      function()
        require('neotest').run.run { suite = false, strategy = 'dap' }
      end,
      desc = 'Debug nearest test',
    },
  },
}

return plugin
