/// @description Insert description here
// You can write your code in this editor
if timer_countdown > 0
{
	timer_countdown -= 1;
} else
{
	timer_countdown = 0;
	timer_countdown = countdown_speed;
	
	if timer > 0
	{
		timer -= 1;
	} else
	{
		timer = 0;
	}
}