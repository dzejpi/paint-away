/// @description Insert description here
// You can write your code in this editor
if !is_flashed
{
	if alpha < 1
	{
		current_flash += 1;
		alpha = current_flash/flash_duration;
	} else
	{
		is_flashed = true;
		alpha = 1;
	}
} else
{
	if alpha > 0
	{
		current_flash -= 1;
		alpha = current_flash/flash_duration;
	} else
	{
		is_flashed = false;
		instance_destroy();
	}
}