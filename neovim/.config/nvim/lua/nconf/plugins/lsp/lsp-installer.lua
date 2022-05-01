local lsp_installer = require("nvim-lsp-installer")

local handlers = require("nconf.plugins.lsp.handlers")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
    }

    if server.name == "sumneko_lua" then
        local sumneko_lua_opts = require("nconf.plugins.lsp.settings.sumneko_lua")
        opts = vim.tbl_deep_extend("force", sumneko_lua_opts, opts)
    end

    server:setup(opts)
end)
