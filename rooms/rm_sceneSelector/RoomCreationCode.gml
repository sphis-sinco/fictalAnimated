global.gif_count = 0
global.in_cutscene = false

randomise()
global.fun = int64(random_range(0, 100))

draw_set_font(font_VCR)

show_debug_message("FUN: " + string(global.fun))

show_debug_log(debug_mode)