/// @description gif making

var frame_every = 2

if (global.save_gif)
{	
    if (global.gif_frame_count == 0)
    {
        global.gif_image = gif_open(1280, 720);
    }
    else if (global.gif_frame_count < global.gif_frame_count_max)
    {
		if (global.gif_frame_count % frame_every == 0) then {
			show_debug_message("gif frame " + string(global.gif_frame_count / frame_every) + "/" + string(global.gif_frame_count_max / frame_every))
			gif_add_surface(global.gif_image, application_surface, 6/100);
		}
    }
    else
    {
        gif_save(global.gif_image, global.gif_name + ".gif");
        global.gif_frame_count = 0;
        global.save_gif = false;		
		
		show_debug_message("gif done :3")
		show_debug_message("C:/" + string_trim(string_split(global.gif_name, "_")[0], ["../"]) + ".gif")
    }
	
    global.gif_frame_count++;
}