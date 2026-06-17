hl.on("keybinds.submap", function(name)
	if name == "" then
		hl.exec_cmd([[notify-send -i "" "󰜺 NORMAL"]])
	else
		hl.exec_cmd('notify-send -i "" "󰩨 ' .. string.upper(name) .. '"')
	end
end)
