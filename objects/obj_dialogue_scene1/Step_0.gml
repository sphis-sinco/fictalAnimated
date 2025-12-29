/// @description Dialogue (Scene 1)

if (tick == 0) then {
	global.dialogue = "e811:\nDid you do it?"
	keyboard_key_press(vk_f2)
	audio_play_sound(snd_ambience_night, 10, false)
}
if (tick == 120) then {
	global.dialogue = "Resu:\nNo,"
} 
if (tick == 240) then {
	global.dialogue = "Resu:\nI got distracted."
}
if (tick == 360) then {
	global.dialogue = "e811:\n> I see."
}

if (tick == 460) then {	
	keyboard_key_press(vk_f3)
}

if (tick == 480) then {
	audio_stop_sound(snd_ambience_night)
	room = rm_scene_selector
}

tick++