return {
     'rcarriga/nvim-notify',
     config = function()
         vim.notify = require('notify')
         require("notify")("Welcome back Javier!")
     end
}