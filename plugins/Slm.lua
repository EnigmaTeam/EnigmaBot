local database = 'http://vip.opload.ir/vipdl/95/1/negative23/'
local function run(msg)
	local res = http.request(database.."slm.db")
	local slm = res:split(",") 
	return slm[math.random(#slm)]
end
return {
	description = "random slm by negative",
	usage = "slm",
	patterns = {
		"^([Ss]lm)$",
    "^([Dd]alam)$",
    "^([Kk]obi)$",
    "^سلام$"
    },
	run = run
}

--slm random by negative