/// @description Insert description here
// You can write your code in this editor
if current_tick < 260
{
	alpha = current_tick/transition_speed;
	current_tick += 1;
} else
{
	alpha = 1;
}

if alpha = 1
{
	if dark_screen > 0
	{
		dark_screen -= 1;
	} else
	{
		room_goto_next();
	}
}