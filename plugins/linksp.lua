--[[
################################
#                              #
#         Link Support         #
#                              #
#                              #
#                              #
#     Update: 7 June 2016      #
#                              #
#                              #
#                              #
################################
]]

do

function run(msg, matches)
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(200670665)]['settings']['set_link']
       if not group_link then
      return 'برای اولین بار ابتدا باید newlink/ را تایپ کنید'
       end
         local text = "لینک گروه\n\n"..group_link.."\n\n#MR_ENIGMA"
            return text
end

return {
  patterns = {
    "^[!#/]([Ll]inksp)$"
  },
  run = run
}

end
