local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_emoji'] == 'yes' then


if msg.to.type == 'channel' and not is_momod(msg) then
	delete_msg(msg.id,ok_cb,false)
	else
	kick_user(msg.from.id, msg.to.id)

        return 
      end
   end
end

return {patterns = {
    "ًںک€",
    "ًںک†",
    "ًںک‚",
    "ًںکک",
    "â‌¤ï¸ڈ",
    "ًںکچ",
    "ًںکٹ",
    "ًں’‹",
    "ًںک­",
    "ًںک„",
    "ًںک”",
    "âک؛ï¸ڈ",
    "ًں‘چًںڈ»",
    "ًںکپ",
    "ًںک’",
    "ًںک³",
    "ًںکœ",
    "ًں™ˆ",
    "ًںک‰",
    "ًںکƒ",
    "ًںک¢",
    "ًںکڑ",
    "ًںک…",
    "ًںک‍",
    "ًںکڈ",
    "ًںک،",
    "ًںک±",
    "ًںک‌",
    "ًں™ٹ",
    "ًںکŒ",
    "ًںک‹",
    "ًں‘Œًںڈ»",
    "ًںکگ",
    "ًںک•"
}, run = run}
