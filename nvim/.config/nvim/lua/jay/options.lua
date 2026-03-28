
-- Show absolute line numbers
vim.opt.number = true
-- Show relative line numbers
vim.opt.relativenumber = true

-- Number of spaces a <Tab> counts for
vim.opt.tabstop = 4
-- Number of spaces a <Tab> counts for in editing operations
vim.opt.softtabstop = 4
-- Number of spaces used for each step of autoindent
vim.opt.shiftwidth = 4
-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Copy indent from current line when starting a new line
vim.opt.autoindent = true


-- Highlight matches while typing a search
vim.opt.incsearch = true
-- Highlight all matches of the previous search
vim.opt.hlsearch = true
-- Case-sensitive search if pattern contains uppercase
vim.opt.smartcase = true

-- Briefly jump to matching bracket when inserting one
vim.opt.showmatch = true
-- Tenths of a second to show the matching paren
vim.opt.matchtime = 2

-- Minimum lines to keep above and below the cursor
vim.opt.scrolloff = 7
-- Highlight the current cursor line
vim.opt.cursorline = true
-- Keep cursor as a block in all modes
vim.opt.guicursor = ""

-- Prevent automatic comment on new line
vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        vim.opt.formatoptions:remove({ "r", "o" })
    end,
})

---- Don't redraw while executing macros or registers
--vim.opt.lazyredraw = true
---- Enhanced command-line completion
--vim.opt.wildmenu = true
---- Keep buffers open in the background when abandoned
--vim.opt.hidden = true

---- Enable 24-bit color
--vim.opt.termguicolors = true

---- Verilog syntax highlighting for .v, .vs, .b files
--vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--    pattern = { "*.v", "*.vs", "*.b" },
--    callback = function() vim.bo.syntax = "verilog" end,
--})
--
---- Python syntax highlighting for Snakefile
--vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--    pattern = "Snakefile",
--    callback = function() vim.bo.syntax = "python" end,
--})

-- Jump to the last cursor position when reopening a file
vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

