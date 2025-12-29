/// @description Dialogue (Scene 1)

if (tick == 0) then {
	global.dialogue = "e811:\nDid you do it?"
	keyboard_key_press(vk_f2)
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
 
if (tick == 480) then {
	keyboard_key_press(vk_f3)
	room = rm_scene_selector
}

tick++