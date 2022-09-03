function run_sbt()
  vim.cmd("vsplit | terminal")
  local command = ':call jobsend(b:terminal_job_id, "sbt\\n")'
  vim.cmd(command)
end

vim.api.nvim_set_keymap('n', 'sbt', '<Cmd>lua run_sbt()<CR>', { noremap = true, silent = true })
