/// @description Draw the button with the correct image
if selected || (position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
} else
{
	image_index = 0;
}

draw_self();
draw_rectangle_color(x - 30, y - 30, x + 48 - 20, y + 48 - 20, buttonColor, buttonColor, buttonColor, buttonColor, false);
