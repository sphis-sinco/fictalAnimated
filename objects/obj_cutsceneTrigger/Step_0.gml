/// @description check for collisions

if (debug_mode and not played_cutscene and not (previous_dto == distance_to_object(obj_target))) then {
	previous_dto = distance_to_object(obj_target)
	show_debug_message("dto ("+string(object_get_name(obj_target))+") :" + string(distance_to_object(obj_target)))
}

if (distance_to_object(obj_target) < distance_until_start and not global.in_cutscene and not played_cutscene) then {
	global.in_cutscene = true
}

function dialogue(tick = 0, dialogue = "", target_cutscene_id = "") {
	if (global.in_cutscene and not played_cutscene and cutscene_tick < tick and not drawing_dialogue and cutscene_id == target_cutscene_id) then {
		drawing_dialogue = true
		
		draw_set_font(font_VCR)
		draw_rectangle_colour(dialoguebox_x1, dialoguebox_y1, dialoguebox_x2, dialoguebox_y2, c_black, c_black, c_black, c_black,false)
		
		draw_text(dialoguebox_x1 + 16, dialoguebox_y1 + 16, dialogue)
		
		if (skip_dialogue)
			cutscene_tick = tick
	}
}