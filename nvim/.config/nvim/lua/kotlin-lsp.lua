local server_bin = '/Users/korvatap/language-servers/kotlin-language-server/server/build/install/server/bin/kotlin-language-server'

require'lspconfig'.kotlin_language_server.setup{
    cmd = { server_bin }
}
