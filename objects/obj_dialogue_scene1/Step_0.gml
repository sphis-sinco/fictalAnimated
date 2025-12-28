/// @description Dialogue (Scene 1)

if (tick == 0) then {
	global.dialogue = "> Did you do it?"
	keyboard_key_press(vk_f2)
}
if (tick == 120) then {
	global.dialogue = "< No,"
}
if (tick == 240) then {
	global.dialogue = "< I got distracted."
}
if (tick == 360) then {
	global.dialogue = "> I see."
}
 
if (tick == 480) then {
	keyboard_key_press(vk_f3)
}

if (tick == 480 + 20) then {
	room = rm_scene_selector
}

tick++