/// @description controls and movement

can_move = not global.in_cutscene

if ((keyboard_check(vk_down) or keyboard_check(ord("S"))) and can_move and not up_dir) then {
	down_dir = true
	y += resu_speed
	sprite_index = spr_resu_down_walk
} else {
	if (down_dir) then {
		down_dir = false
		sprite_index = spr_resu_down_idle
	}
}


if ((keyboard_check(vk_up) or keyboard_check(ord("W"))) and can_move and not down_dir) then {
	up_dir = true
	y -= resu_speed
	sprite_index = spr_resu_down_walk
} else {
	if (up_dir) then {
		up_dir = false
		sprite_index = spr_resu_down_idle
	}
}

if ((keyboard_check(vk_left) or keyboard_check(ord("A"))) and can_move and not right_dir) then {
	left_dir = true
	x -= resu_speed
	sprite_index = spr_resu_down_walk
} else {
	if (left_dir) then {
		left_dir = false
		sprite_index = spr_resu_down_idle
	}
}

if ((keyboard_check(vk_right) or keyboard_check(ord("D"))) and can_move and not left_dir) then {
	right_dir = true
	x += resu_speed
	sprite_index = spr_resu_down_walk
} else {
	if (right_dir) then {
		right_dir = false
		sprite_index = spr_resu_down_idle
	}
}