/// @description dialogue

dialoguebox_x1 = 20
dialoguebox_x2 = window_get_width() - dialoguebox_x1

dialoguebox_y1 = window_get_height() - 160
dialoguebox_y2 = window_get_height() - 20

if (global.in_cutscene) then {
	cutscene_tick++
	
	draw_set_font(font_VCR)
	draw_rectangle_colour(dialoguebox_x1, dialoguebox_y1, dialoguebox_x2, dialoguebox_y2, c_black, c_black, c_black, c_black,false)
	
	if (room == rm_scene1 and not global.last_cutscene == rm_scene1) then {
		if (cutscene_tick < 120) then {
			draw_text(dialoguebox_x1 + 16, dialoguebox_y1 + 16, "Do you really wanna do this?")
		} else {
			global.last_cutscene = room
			global.in_cutscene = false
		}
	} else {
		global.in_cutscene = false
	}
} else {
	cutscene_tick = 0
}