do

function run(msg, matches)
  return 'Enigma Bot '.. VERSION .. [[ 
  #ENIGMA_BOT]]
end

return {
  description = "Shows bot version", 
  usage = "[#/!]v: \nنمایش ورژن ربات",
  patterns = {
    "^[#/!]v$"
  }, 
  run = run 
}

end