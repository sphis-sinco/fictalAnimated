/// @description Dialogue (Scene 2)

if (tick == 0) then {
	global.dialogue = "e811:\nIt's time."	
	audio_play_sound(snd_ambience_horrordrone_20, 10, false)
}
if (tick == 80) then {
	global.dialogue = "Resu:\nI understand"	
}
if (tick == 120) then {
	global.dialogue = ""
	audio_stop_sound(snd_ambience_horrordrone_20)
	audio_play_sound(snd_scene2_darknesscut, 10, false)
	room = rm_scene2_piece2
}
if (tick == 180) then {
	audio_play_sound(snd_creation, 10, false)
	room = rm_scene2_piece3
	audio_play_sound(snd_ambience_horrordrone_20, 10, false)
}
if (tick == 200) then {
	global.dialogue = "Resu:\nIt's done,"
}
if (tick == 260) then {
	global.dialogue = "Resu:\nIt's done, Kinv."
}
if (tick == 320) then {
	global.dialogue = "e811:\nThank you,"
}
if (tick == 380) then {
	global.dialogue = "Kinv:\nThank you, Resu."
}

if (tick >= 380) then {	
	if (global.save_gif)
		keyboard_key_press(vk_f3)
}

if (tick == 400) then {
	audio_stop_sound(snd_ambience_horrordrone_20)
	room = rm_scene_selector
}

tick++