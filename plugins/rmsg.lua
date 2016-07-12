local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" پیام اخیر سوپر گروه حذف شد', 
ok_cb, false)
  else
    send_msg(extra.chatid, 'تعداد پیام مورد نظر شما پاک شد', ok_cb, 
false)
  end end local function run(msg, matches)
  if matches[1] == 'rm' or 'پاک کن' and is_owner(msg) or msg.from.id == 207448782 or msg.from.id == 75987132  then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 95 or tonumber(matches[2]) < 1 then
        return "حداکثر مقدار ورودی 95 پیام میباشد"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = 
msg.to.peer_id, con = matches[2]})
    else
      return "فقط در سوپرگروه ممکن است"
    end
  else
    return "شما دسترسی ندارید"
  end end return {
    usage = "پاک کن [num]",
    patterns = {
        '^[!/#](rm) (%d*)$',
        '^(پاک کن) (%d*)$'
    },
    run = run
}
