-- LSP configuration

-- install servers and tools
require "bunny.lsp.mason"

local lspconfig = require "lspconfig"
local servers = require "bunny.lsp.servers"


for server, setup in pairs(servers) do
    lspconfig[server].setup(setup())
end

