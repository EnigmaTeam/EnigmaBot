function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒 ساعت '..jdat.FAtime..' \n📆 امروز '..jdat.FAdate..' میباشد.\n    ----\n🕒 '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '\n\n#MR_Enigma'
return text
end
return {
  usage = "با دستورات زیر زمان و تاریخ برای شما ارسال میشود\n#Time\nTime\n⌚️\n⏰\n⏱",
  patterns = {
      "^[/#!]([Tt][iI][Mm][Ee])$",
      "^([Tt][Ii][Mm][Ee])$",
      "^⌚️$",
      "^⏰$",
      "^⏱$"
      
  }, 
run = run 
}