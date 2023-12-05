-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    'mhartington/formatter.nvim',

    -- [[ Configure Formatter ]]
    -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
    config = function()
        -- Utilities for creating configurations
        local util = require "formatter.util"

        require("formatter").setup {
            -- All formatter configurations are opt-in
            filetype = {
                -- Formatter configurations for filetype "python" go here
                -- and will be executed in order
                python = {
                    -- "formatter.filetypes.python" defines default configurations for the
                    -- "python" filetype
                    require("formatter.filetypes.python")
                },

                -- Use the special "*" filetype for defining formatter configurations on
                -- any filetype
                ["*"] = {
                    -- "formatter.filetypes.any" defines default configurations for any
                    -- filetype
                    require("formatter.filetypes.any").remove_trailing_whitespace,
                }
            }
        }
    end,
}