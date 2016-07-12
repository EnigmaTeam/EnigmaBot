local function run(msg, matches)
if msg.to.type == 'chat' then
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_link'] then
                lock_link = data[tostring(msg.to.id)]['settings']['lock_link']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_link == "yes" then
        send_large_msg(chat, '⛔️ ارسال لینک تبلیغاتی مجاز نمیاشد.')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 end
return {
    usage ={
        "lock adds: If User Send A Link Then Removed From Bot.",
        "unlock adds: Adds Is Enabled.",
        },
  patterns = {
    "telegram.me/joinchat/",
    "telegram.me",
    "[Ht]ttps://",
    "[Hh][Tt][Tt][Pp][Ss][:][/][/]",
    "[Hh][Tt][Tt][Pp][:][/][/]",
    "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee][/]",
    "[Ww][Ww][Ww][.]",
    "[.][Cc][Oo][Mm]"
  },
  run = run
}