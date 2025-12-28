/// @description gif making

if (saveGif)
{
    if (frameCount == 0)
    {
        gifImage = gif_open(1280, 720);
    }
    else if (frameCount < maxFrameCount)
    {
        gif_add_surface(gifImage, application_surface, 6/100);
    }
    else
    {
        gif_save(gifImage, gifName + ".gif");
        frameCount = 0;
        saveGif = false;
		
		show_debug_message("gif done :3")
    }
	
    frameCount++;
}