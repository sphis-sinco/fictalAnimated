/// @description F2 starts the gif making

if not saveGif then {
	gifName = "fictalAnimated_"+GM_version+"_"+string(random_range(0, 8 * 8 * 8 * 8 * 8))

	frameCount = 0
	saveGif = true

	show_debug_message(room_get_name(room))
	show_debug_message("IM MAKING A GIF: " + gifName)
}