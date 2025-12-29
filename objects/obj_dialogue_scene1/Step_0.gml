/// @description Dialogue Events (Scene 1)

tick = obj_manager_dialogue_file.tick

if (tick == 0) then {
	audio_play_sound(snd_ambience_night, 10, false)
}

if (tick == 475) then {
	audio_stop_sound(snd_ambience_night)
}