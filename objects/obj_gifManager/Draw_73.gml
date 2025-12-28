/// @description gif makin text

if (save_gif) then {
	draw_set_font(font_VCR_small)
	if (debug_mode) then {
		draw_text_color(0, 20, GM_version, c_white, c_white, c_white, c_white, 1)
	} else {
		if (frame_count % 10 == 0)
			draw_circle_colour(10, 10, 8, c_red, c_red, c_black)
	}
}