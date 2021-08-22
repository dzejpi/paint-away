/// @description Fix scaling for HTML5
if !(os_browser == browser_not_a_browser)
{
	// Scale properly if in browser
	if (browser_width != width || browser_height != height)
	{
		width = browser_width;
		height = browser_height;
		window_set_size(width, height);
	}
}
