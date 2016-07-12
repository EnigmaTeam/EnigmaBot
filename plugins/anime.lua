function run(msg, matches)
local url = http.request('https://konachan.com/post.json?limit=300')
local js = json:decode(url)
local random = math.random (100)
local sticker = js[random].jpeg_url
local file = download_to_file(sticker,'sticker.png')
send_photo(get_receiver(msg), file, ok_cb, false)

end
return {
patterns = {
"^[!#/]([Aa]nimeee)$"
},
run = run
}