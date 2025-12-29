/// @description draw dialogue box

x1 = 20
x2 = window_get_width() - x1

y1 = window_get_height() - 160
y2 = window_get_height() - x1

if not (global.dialogue == "") then {
	draw_set_colour(c_white)
	draw_rectangle(x1 - 4, y1 - 4, x2 + 4, y2 + 4, false)
	draw_set_colour(c_black)
	draw_rectangle(x1, y1, x2, y2, false)

	draw_set_font(font_VCR_big)
	draw_set_colour(c_white)
	draw_text(x1 + 10, y1, global.dialogue)
}