/// @description controls and movement

can_move = not global.in_cutscene

if (keyboard_check(vk_down) and can_move) then {
	down_dir = true
	y += resu_speed
	sprite_index = spr_resu_down_walk
} else {
	if (down_dir) then {
		down_dir = false
		sprite_index = spr_resu_down_idle
	}
}


if (keyboard_check(vk_up) and can_move) then {
	up_dir = true
	y -= resu_speed
	sprite_index = spr_resu_down_walk
} else {
	if (up_dir) then {
		up_dir = false
		sprite_index = spr_resu_down_idle
	}
}

if (keyboard_check(vk_left) and can_move) then {
	left_dir = true
	x -= resu_speed
	sprite_index = spr_resu_left_idle
	sprite_index = spr_resu_down_walk
	// image_xscale = -image_yscale
} else {
	if (left_dir) then {
		left_dir = false
		sprite_index = spr_resu_left_idle
		sprite_index = spr_resu_down_idle
	}
}

if (keyboard_check(vk_right) and can_move) then {
	right_dir = true
	x += resu_speed
	sprite_index = spr_resu_right_idle
	sprite_index = spr_resu_down_walk
	// image_xscale = image_yscale
} else {
	if (right_dir) then {
		right_dir = false
		sprite_index = spr_resu_right_idle
		sprite_index = spr_resu_down_idle
	}
}

any_movement = can_move and (left_dir or down_dir or up_dir or right_dir)