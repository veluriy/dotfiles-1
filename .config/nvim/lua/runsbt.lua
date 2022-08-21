local function run_sbt()
  vim.cmd("vsplit | terminal")
  local command = ':call jobsend(b:terminal_job_id, "sbt\\n")'
  vim.cmd(command)
end

return {
  run_sbt = run_sbt
}
