vim.api.nvim_exec(
  [[
  augroup fileTypeIndent
    autocmd!
    autocmd FileType *.ts,*.tsx,*.module.css setlocal tabstop=4 softtabstop=4 shifttabwidth=4
  augroup END
  ]],
  true
)
