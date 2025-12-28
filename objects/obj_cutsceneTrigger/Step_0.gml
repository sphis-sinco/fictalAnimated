/// @description check for collisions

if (debug_mode and not global.last_cutscene == room and not (previous_dto == distance_to_object(obj_target))) then {
	previous_dto = distance_to_object(obj_target)
	show_debug_message("dto ("+string(object_get_name(obj_target))+") :" + string(distance_to_object(obj_target)))
}

if (distance_to_object(obj_target) < 30 and not global.in_cutscene and not global.last_cutscene == room) then {
	global.in_cutscene = true
}
