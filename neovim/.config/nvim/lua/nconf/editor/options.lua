
local options = {
    guicursor = "",
    completeopt = { "menu", "menuone", "noinsert", "noselect" },
    number = true,
    hlsearch = false,
    relativenumber = true,
    hidden = true,
    errorbells = false,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    wrap = false,
    swapfile = false,
    -- undodir = '$HOME/.vim/undodir',
    -- -- autochdir = true,
    -- undofile = true,
    incsearch = true,
    ignorecase = true,
    scrolloff = 8,
    signcolumn = "yes",
    colorcolumn = "80",
    showmode = false,
    termguicolors = true,
    clipboard = "unnamedplus",
    cmdheight = 1,
    mouse = "a",
    timeout = true,
    timeoutlen = 1000,
    ttimeoutlen = 100,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd [[
    if !isdirectory($HOME."/.vim")
        call mkdir($HOME."/.vim", "", 0770)
    endif
    if !isdirectory($HOME."/.vim/undo-dir")
        call mkdir($HOME."/.vim/undo-dir", "", 0700)
    endif
    set undodir=~/.vim/undo-dir
    set undofile
]]

