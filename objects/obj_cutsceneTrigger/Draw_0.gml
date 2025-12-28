/// @description dialogue

dialoguebox_x1 = 20
dialoguebox_x2 = window_get_width() - dialoguebox_x1

dialoguebox_y1 = window_get_height() - 160
dialoguebox_y2 = window_get_height() - 20

if not (sprite == pointer_null) then {
	draw_sprite(sprite, -1, x, y)
}

drawing_dialogue = false

function dialogue(tick = 0, dialogue) {
	if (cutscene_tick < tick and not drawing_dialogue) then {
		drawing_dialogue = true
		
		draw_text(dialoguebox_x1 + 16, dialoguebox_y1 + 16, dialogue)
		if (skip_dialogue)
			cutscene_tick = tick
	}
}

if (global.in_cutscene and not played_cutscene) then {
	cutscene_tick++
	
	skip_dialogue = keyboard_check_pressed(vk_enter)
	
	draw_set_font(font_VCR)
	draw_rectangle_colour(dialoguebox_x1, dialoguebox_y1, dialoguebox_x2, dialoguebox_y2, c_black, c_black, c_black, c_black,false)
	
	if (cutscene_id == "doyou?") then {
		
		dialogue(120, "Do you really wanna do this?")
		dialogue(180, "ahhaahahahahahahahahahahahahahahahahahahahahaha")
		dialogue(200, "youre gonna have : " + base64_encode(string(global.fun) + " fun!"))
		
		if (not drawing_dialogue) then {
			played_cutscene = true
			global.in_cutscene = false
		}
	} else {
		played_cutscene = true
		global.in_cutscene = false
	}
} else {
	cutscene_tick = 0
}