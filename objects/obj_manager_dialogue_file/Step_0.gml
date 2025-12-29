/// @description dialogue management

for (var i = 0; i < array_length(dialogue_lines); i += 1)
{
	split_line = string_split(dialogue_lines[i], "--")
	
	user = split_line[0]
	dialogue = split_line[1]
	target_tick = int64(split_line[2])
	
	if (tick == target_tick) then {
		global.dialogue = ""
		if (not (user == "")) then {
			global.dialogue += user + ":\n"
		}
		global.dialogue += dialogue
	}
}

if (tick == 0 and gif_autorecord) then {
	keyboard_key_press(vk_f2)
}

if (tick >= dialogue_ending_tick - 20) then {	
	if (global.save_gif)
		keyboard_key_press(vk_f3)
}

if (tick >= dialogue_ending_tick) then {
	global.dialogue = ""
	room = rm_scene_selector
}

tick++