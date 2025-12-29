/// @description dialogue initalization

dialogue_lines = []

var file_buffer = buffer_load(dialogue_file);
var file_content_string = buffer_read(file_buffer, buffer_string);
buffer_delete(file_buffer);
// show_debug_message(file_content_string)

dialogue_lines = string_split(file_content_string, "\n")
// show_debug_message(dialogue_lines)

show_debug_message("Read dialogue file: " + dialogue_file)

tick = dialogue_starting_tick