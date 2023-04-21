local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require 'lspconfig'.html.setup {
    capabilities = capabilities,
}

require 'lspconfig'.cssls.setup {
    capabilities = capabilities,
}

require 'lspconfig'.texlab.setup {
    capabilities = capabilities,
    settings = {
        auxDirectory = ".",
        bibtexFormatter = "texlab",
        build = {
            args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
            executable = "latexmk",
            forwardSearchAfter = false,
            onSave = false
        },
        chktex = {
            onEdit = false,
            onOpenAndSave = false
        },
        diagnosticsDelay = 300,
        formatterLineLength = 80,
        forwardSearch = {
            args = {}
        },
        latexFormatter = "latexindent",
        latexindent = {
            modifyLineBreaks = false
        }
    }
}


require('lspconfig').pyright.setup({
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        ruff = { enabled = false },
        autopep8 = { enabled = false },
        flake8 = { enabled = false },
        mccabe = { enabled = false },
        pycodestyle = { enabled = false },
        pydocstyle = { enabled = false },
        pyflakes = { enabled = false },
        pylint = { enabled = false },
        yapf = { enabled = false },
      },
    },
  },
})

require('lspconfig').ruff_lsp.setup({
  capabilities = capabilities,
})

-- vim.cmd('Copilot disable')
