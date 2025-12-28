/// @description gif making

var frameEvery = 2

if (saveGif)
{	
    if (frameCount == 0)
    {
        gifImage = gif_open(1280, 720);
    }
    else if (frameCount < maxFrameCount)
    {
		if (frameCount % frameEvery == 0) then {
			show_debug_message("gif frame " + string(frameCount / frameEvery) + "/" + string(maxFrameCount / frameEvery))
			gif_add_surface(gifImage, application_surface, 6/100);
		}
    }
    else
    {
        gif_save(gifImage, gifName + ".gif");
        frameCount = 0;
        saveGif = false;		
		
		show_debug_message("gif done :3")
		show_debug_message(program_directory + gifName + ".gif")
    }
	
    frameCount++;
}