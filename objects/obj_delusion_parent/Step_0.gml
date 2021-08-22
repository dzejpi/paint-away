/// @description Insert description here
// You can write your code in this editor
if hspeed > 0
{
	image_xscale = 1;
} else if hspeed < 1
{
	image_xscale = -1;
}

if is_climbing
{
	if !going_back
	{
		if y > climbing_to_y
		{
			sprite_index = climb_sprite;
			vspeed = -0.4;
		} else
		{
			going_back = true;
		}
	} else
	{
		if y < original_y_pos
		{
			sprite_index = climb_sprite;
			vspeed = 0.4;
		} else
		{
			if destroy_after
			{
				instance_destroy();
			}
			going_back = false;
		}
	}
}

if is_walking
{

}

if destroy_immediately
{
	instance_destroy();
}