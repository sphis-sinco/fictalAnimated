/// @description check for collisions

if (debug_mode and not played_cutscene and not (previous_dto == distance_to_object(obj_target))) then {
	previous_dto = distance_to_object(obj_target)
	show_debug_message("dto ("+string(object_get_name(obj_target))+") :" + string(distance_to_object(obj_target)))
}

if (distance_to_object(obj_target) < distance_until_start and not global.in_cutscene and not played_cutscene) then {
	global.in_cutscene = true
}
