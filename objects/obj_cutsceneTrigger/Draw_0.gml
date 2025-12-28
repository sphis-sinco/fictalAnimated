/// @description dialogue

dialoguebox_x1 = 20
dialoguebox_x2 = window_get_width() - dialoguebox_x1

dialoguebox_y1 = window_get_height() - 160
dialoguebox_y2 = window_get_height() - 20

if not (sprite == pointer_null) then {
	draw_sprite(sprite, -1, x, y)
}

drawing_dialogue = false

if (global.in_cutscene and not played_cutscene) then {
	cutscene_tick++
	
	skip_dialogue = keyboard_check_pressed(vk_enter)
	
	alldialogues()

	
	if (not drawing_dialogue) then {
		played_cutscene = true
		global.in_cutscene = false
	}
} else {
	cutscene_tick = 0
}