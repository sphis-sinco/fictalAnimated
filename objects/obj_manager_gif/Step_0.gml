/// @description gif making

var frame_every = 2

if (save_gif)
{	
    if (frame_count == 0)
    {
        gif_image = gif_open(1280, 720);
    }
    else if (frame_count < frame_count_max)
    {
		if (frame_count % frame_every == 0) then {
			show_debug_message("gif frame " + string(frame_count / frame_every) + "/" + string(frame_count_max / frame_every))
			gif_add_surface(gif_image, application_surface, 6/100);
		}
    }
    else
    {
        gif_save(gif_image, gif_name + ".gif");
        frame_count = 0;
        save_gif = false;		
		
		show_debug_message("gif done :3")
		show_debug_message("C:/" + string_trim(gif_name, ["../"]) + ".gif")
    }
	
    frame_count++;
}