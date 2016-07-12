--[[
#####################################
#                                   #
#            Link Private           #
#                                   #
#                                   #
#                                   #
#        Update: 7 June 2016        #
#                                   #
#                                   #
#                                   #
#####################################
]]

do

function run(msg, matches)
       if not is_momod(msg) then
        return "شما مدیر گروه نیستید!"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "برای اولین بار ابتدا باید newlink/ را تایپ کنید"
       end
         local text = "لینک گروه/ سوپر گروه:\n"..group_link.."\n\n#MR_ENIGMA"
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "لینک گروه/ سوپر گروه، به PV شما ارسال شد!"
end

return {
  patterns = {
    "^[!#/]([Ll]inkpv)$"
},
  run = run
}

end
