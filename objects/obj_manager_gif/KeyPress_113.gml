/// @description F2 starts the gif making

if not save_gif then {
	gif_name = "gifs/" + GM_version + "/"
	gif_name += room_get_name(room)
	if (debug_mode) then {
		gif_name += "-debug"
	}
	gif_name += "-" + string(global.gif_count)

	global.gif_count++
	frame_count = 0
	save_gif = true

	show_debug_message(room_get_name(room))
	show_debug_message("IM MAKING A GIF: " + gif_name)
}