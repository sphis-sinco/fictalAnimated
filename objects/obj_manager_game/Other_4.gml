/// @description  init room stuffs

if (room == rm_init) then {
	global.custom_savepath_prefix = "../../../../../macohi/fictalAnimated/"
	randomise()
	global.fun = 0.0
	
	global.gif_count = 0
	global.save_gif = false
	global.gif_name = false
	global.gif_frame_count = 0
	global.gif_frame_count_max = 60 * 30
	global.gif_image = pointer_null

	global.dialogue = "apple\nbottom\njeans"
	if (not debug_mode) then {
		global.dialogue = ""
	}

	draw_set_font(font_VCR)

	openSave()
	if (not ini_section_exists("BACKEND")) then {
		show_debug_message("SAVE DOES NOT EXIST OR IS MISSING BACKEND SECTION")
		resetSave()
	} else {
		show_debug_message("SAVE EXISTS")
		
		readGlobal()
		saveBackend()
	}
	closeSave()

	show_debug_message("FUN: " + string(global.fun))

	room = rm_scene_selector
}