/// @description display the fun value

draw_set_font(font_VCR)
draw_text(0, (debug_mode) ? 20 : 10, "fun: " + string(global.fun))