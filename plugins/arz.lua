--[[
################################
#                              #
#             Arz              #
#                              #
#                              #
#                              #
#                              #
#                              #
#                              #
#	                             #
#                              #
#     Update: 7 June 2016      #
#                              #
#                              #
#                              #
#                              #
################################
]]

local function get_arz()
  local url = 'http://exchange.nalbandan.com/api.php?action=json'
  local jstr, res = http.request(url)
  local arz = json:decode(jstr)
  return '📅 نرخ ارز ، طلا و سکه در : \n\n'..arz.dollar.date..'\n\n〽️ هر گرم طلای 18 عیار : \n'..arz.gold_per_geram.value..'\n🏅 سکه طرح جدید : \n\n'..arz.coin_new.value..'\n🎖 سکه طرح قدیم : \n\n'..arz.coin_old.value..'\n💵 دلار آمریکا : \n\n'..arz.dollar.value..'\n💵 دلار رسمی : \n\n'..arz.dollar_rasmi.value..'\n💶 یورو : \n\n'..arz.euro.value..'\n💷 پوند : \n\n'..arz.pond.value..'\n💰 درهم : \n\n'..arz.derham.value..'\n\n#MR_ENIGMA\n\nبرای دیدن سایر دستورات\n@help\nراتایپ نمایید'
end

local function run(msg, matches)
  local text
  if matches[1] == 'arz' then
  text = get_arz() 
elseif matches[1] == 'gold' then
  text = get_gold() 
elseif matches[1] == 'coin' then
  text = get_coin() 
  end
  return text
end
return {
  description = "description = Exapmle: /arz ",
  usage = "از دستور\n#Arz\nبرای دریافت اخرین تغییرات قیمت ارز استفاده کنید\nبرای دیدن سایت امکانات ربات\n@help\nرا تایپ کنید\n\n#MR_ENIGMA",
  patterns = {
	"^[!#/]([Aa][Rr][Zz])$"
  }, 
  run = run 
}
