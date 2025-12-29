/// @description Dialogue Events (Scene 2)

tick = obj_manager_dialogue_file.tick

if (tick == 0) then {
	audio_play_sound(snd_ambience_horrordrone_20, 10, false)
}
if (tick == 120) then {
	audio_stop_sound(snd_ambience_horrordrone_20)
	audio_play_sound(snd_scene2_darknesscut, 10, false)
	room = rm_scene2_part2
}
if (tick == 180) then {
	audio_play_sound(snd_creation, 10, false)
	room = rm_scene2_part3
	audio_play_sound(snd_ambience_horrordrone_20, 10, false)
}
if (tick == 395) then {
	audio_stop_sound(snd_ambience_horrordrone_20)
}

tick++