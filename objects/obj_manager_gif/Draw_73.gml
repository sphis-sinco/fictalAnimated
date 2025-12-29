/// @description gif makin text

if (global.save_gif) then {
	draw_set_font(font_VCR_small)
	
	if (global.gif_frame_count % 10 == 0)
		draw_circle_colour(10, 10, 8, c_red, c_red, c_black)
		
	if (debug_mode) then {
		draw_text_color(0, 20, string(global.gif_frame_count) + "/" + string(global.gif_frame_count_max), c_white, c_white, c_white, c_white, 1)
	}
}