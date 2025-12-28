/// @description controls and movement

if (keyboard_check(vk_down)) then {
	down_dir = true
	y += resu_speed
	sprite_index = spr_resu_down_walk
} else {
	down_dir = false
	
	if (not any_movement) then {
		sprite_index = spr_resu_down_idle
	}
}


if (keyboard_check(vk_up)) then {
	up_dir = true
	y -= resu_speed
	sprite_index = spr_resu_down_walk
} else {
	up_dir = false
	
	if (not any_movement) then {
		sprite_index = spr_resu_down_idle
	}
}

if (keyboard_check(vk_left)) then {
	left_dir = true
	x -= resu_speed
	sprite_index = spr_resu_down_walk
} else {
	left_dir = false
	
	if (not any_movement) then {
		sprite_index = spr_resu_down_idle
	}
}

if (keyboard_check(vk_right)) then {
	right_dir = true
	x += resu_speed
	sprite_index = spr_resu_down_walk
} else {
	right_dir = false
	
	if (not any_movement) then {
		sprite_index = spr_resu_down_idle
	}
}

any_movement = left_dir or down_dir or up_dir or right_dir