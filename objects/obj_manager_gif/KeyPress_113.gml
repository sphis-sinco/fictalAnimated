/// @description F2 starts the gif making

if not (global.save_gif or room == rm_scene_selector) then {
	global.gif_name = global.custom_savepath_prefix
	if (debug_mode) then {
		global.gif_name += "debug/"
	} else {
		global.gif_name += "release/"
	}
	global.gif_name += "gifs/" + GM_version + "/"
	global.gif_name += room_get_name(room)
	
	global.gif_name += "-" + string(global.gif_count)

	global.gif_count++
	global.gif_frame_count = 0
	global.save_gif = true

	show_debug_message(room_get_name(room))
	show_debug_message("IM MAKING A GIF: " + global.gif_name)
}