/// @description Check for click
if doubleClickPrevention = 0
{
	// Select if mouse is above and the player clicks
	if ((position_meeting(mouse_x, mouse_y, self)) && mouse_check_button(mb_left))
	{
		if isPressed = true
		{
			isPressed = false;
			doubleClickPrevention = 30;
		} else
		{
			isPressed = true;
			doubleClickPrevention = 30;
		}
	}
}

if doubleClickPrevention > 0
{
	doubleClickPrevention -= 1;
}