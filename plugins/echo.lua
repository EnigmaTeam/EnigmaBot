local function run(msg, matches)
  local text = matches[1]
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  return text
end

return {
  description = "این پلاگین حرف شما را تکرار میکند",
  usage = "با زدن دستورات زیر\n#echo [word]\nتکرار کن کلمه مورد نظر\nربات کلمه شما را تکرار میکند\nبرای دیدن دستورات بیشتر\n@help\nرا تایپ نمایید",
  patterns = {
    "^[#/!]echo +(.+)$",
    "^تکرار کن +(.+)$"
  }, 
  run = run 
}