function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("speedtest-cli"):read('*all')
  return text
end
return {
  usage = "مربوط به سرور",
  patterns = {
    '^[#/!]speedbot$'
  },
  run = run,
  moderated = true
}
