/// @description Draw the button with the correct image
if selected || (position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
} else
{
	image_index = 0;
}

draw_self();

if selected
{
	draw_sprite_ext(correspondingSprite, 0, x, y, 0.25, 0.25, 0, c_green, 1);
} else
{
	draw_sprite_ext(correspondingSprite, 0, x, y, 0.25, 0.25, 0, c_red, 1);
}
