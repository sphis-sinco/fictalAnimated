/// @description STOP TOUCHING ME : IM A MINOR

if (obj_resu.up_dir) then {
	obj_resu.y += obj_resu.resu_speed
}
if (obj_resu.down_dir) then {
	obj_resu.y -= obj_resu.resu_speed
}

if (obj_resu.left_dir) then {
	obj_resu.x += obj_resu.resu_speed
}
if (obj_resu.right_dir) then {
	obj_resu.y -= obj_resu.resu_speed
}