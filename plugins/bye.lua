do

function run(msg, matches)
local reply_id = msg['id']
local text = 'خدا حافظ👋👋👋👋\n\n❤️'
if matches[1] == 'بای' or 'خدانگهدار' or 'bye' or 'Bye' or 'khodahafez' then
reply_msg(reply_id, text, ok_cb, false)
end
end 
return {
    usage = "این دستور با دریافت کلمات\nبای\nخدانگهدار\nbye\nBye\nkhodahafez\nبه پیام شما پاسخ میدهد\nبرای دریافت راهنمایی بیشتر عبارت\n@help\nرا تایپ نمایید\n#MR_Enigma",
patterns = {
    "^بای$",
    "^خدانگهدار$",
	"^bye$",
	"^Bye$",
	"^khodahafez$"
},
run = run
}

end


