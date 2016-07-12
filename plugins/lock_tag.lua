local function run(msg, matches)
if msg.to.type == 'chat' then
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_tag'] then
                lock_tag = data[tostring(msg.to.id)]['settings']['lock_tag']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_tag == "yes" then
        send_large_msg(chat, '⛔️ ارسال تگ مجاز نمیاشد.')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 end
return {
	usage = {
		"lock tag: غیر فعال کردن ارسال @",
		"unlock tag: فعال کردن ارسال @",
		},
  patterns = {
    "@"
  },
  run = run
}