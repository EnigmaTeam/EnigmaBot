

do

 function run(msg, matches)
 local ch = 'chat#id'..msg.to.id
 local fuse = '📌 #فیدبک جدید\n\n👤 نام کاربر : ' .. msg.from.print_name .. '\n\n👤 نام کاربری : @' .. msg.from.username ..'\n\n👤 کد کاربر : ' .. msg.from.id ..'\n\n👤 کد گروه : '..msg.to.id.. '\n\n📝 متن پیام :\n\n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "chat#id"..216624100

  local sends = send_msg(chat, fuse, ok_cb, false)
  return '✅  پیام شما با موفقیت ارسال شد'

 end
 end
 return {

  description = "ارتباط با سازنده رباط",

  usage = "از دستور \n#Feedback\nقبل از پیام خود استفاده کنید تا پیام شما به سازنده ربات ارسال شود.",
  patterns = {
  "^[!#/][Ff]eedback (.*)$",
  "^[Ff]eedback (.*)$"
  
  },
  run = run
 }
 
