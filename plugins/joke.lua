
local database = 'http://vip.opload.ir/vipdl/94/11/amirhmz/'
local function run(msg)
	local res = http.request(database.."joke.db")
	local joke = res:split(",") 
	return joke[math.random(#joke)]
end
return {
	description = "500 Persian Joke",
	usage = "از دستور\n#joke\nیا\n😂\nبرای دریافت جوک های جدید استفاده کنید",
	patterns = {
		"^[/#!]joke$"
		},
	run = run
}