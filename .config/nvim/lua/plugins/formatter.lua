local formatter_prettier = { require('formatter.defaults.prettier') }
require("formatter").setup({
  filetype = {
    javascript      = formatter_prettier,
    javascriptreact = formatter_prettier,
    typescript      = formatter_prettier,
    typescriptreact = formatter_prettier,
    vue             = formatter_prettier
  }
})
