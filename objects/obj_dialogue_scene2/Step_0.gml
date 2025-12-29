/// @description Dialogue (Scene 2)

if (tick == 0) then {
	global.dialogue = "e811:\nIt's time."	
}
if (tick == 80) then {
	global.dialogue = "Resu:\nI understand"	
}
if (tick == 120) then {
	global.dialogue = ""	
	audio_play_sound(sfx_scene2_darknesscut, 10, false)
	room = rm_scene2_piece2
}
if (tick == 180) then {
	audio_play_sound(sfx_creation, 10, false)
	room = rm_scene2_piece3
}
if (tick == 400) then {
	keyboard_key_press(vk_f3) 
	room = rm_scene_selector
}

tick++