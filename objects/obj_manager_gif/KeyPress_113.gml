/// @description F2 starts the gif making

if not save_gif then {
	gif_name = global.custom_savepath_prefix
	if (debug_mode) then {
		gif_name += "debug/"
	} else {
		gif_name += "release/"
	}
	gif_name += "gifs/" + GM_version + "/"
	gif_name += room_get_name(room)
	
	gif_name += "-" + string(global.gif_count)

	global.gif_count++
	frame_count = 0
	save_gif = true

	show_debug_message(room_get_name(room))
	show_debug_message("IM MAKING A GIF: " + gif_name)
}