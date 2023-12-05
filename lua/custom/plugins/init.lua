-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    'sbdchd/neoformat',
    -- Add let g:neoformat_run_all_formatters = 1

    config = function()
        vim.g.neoformat_run_all_formatters = 1
    end
}