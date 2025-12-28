/// @description F2 starts the gif making

if not saveGif then {
	gifName = "fictalAnimated_"+GM_version+"_"+string(global.gifCount)
	
	global.gifCount++
	saveGif = true

	show_debug_message("IM MAKING A GIF: " + gifName)
}