global.gif_count = 0
randomise()
global.fun = int64(random_range(0, 100))

global.dialogue = "apple\nbottom\njeans"
if (not debug_mode) then {
	global.dialogue = ""
}

draw_set_font(font_VCR)

show_debug_message("FUN: " + string(global.fun))
show_debug_log(debug_mode)

room = rm_sceneSelector