return {
     'rcarriga/nvim-notify',
     config = function()
         vim.notify = require('notify')
         require("notify")("My super important message")
     end
}