/// @description Insert description here
// You can write your code in this editor
if displayingSplash
{
	if alphaImage < 1
	{
		alphaImage += splashSpeed;
	} else
	{
		displayingSplash = false;
		displayedSplash = true;
	}
}

if displayedSplash
{
	if alphaImage > 0
	{
		alphaImage -= splashSpeed;
	} else
	{
		if logos_displayed < 2
		{
			logos_displayed += 1;
			displayingSplash = true;
			displayedSplash = false;
			
			alphaImage = 0.00;
		} else
		{
			room_goto(room_main_menu);
		}
	}
}

draw_set_alpha(alphaImage);
if logos_displayed = 1
{
	draw_sprite(spr_dzejpi_logo, 0, room_width/2, room_height/2);
} else
{
	draw_sprite(spr_kenney_logo, 0, room_width/2, room_height/2);
}

draw_set_alpha(1);