function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("screen bash steady.sh -t"):read('*all')
  return text
end
return {
  patterns = {
    "^launch$"
  },
  run = run,
  moderated = true
}