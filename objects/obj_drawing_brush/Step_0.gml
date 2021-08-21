/// @description Brush logic

// Follow the mouse cursor
x = mouse_x;
y = mouse_y;

// Detect pressed button and change the rotation
if mouse_check_button_pressed(mb_left)
{
	is_mouse_pressed = true;
} else
{
	is_mouse_pressed = false;
}

if is_mouse_pressed
{
	random_decision = irandom(1);
	
	if random_decision = 0
	{
		is_rotating = true;
		is_rotating_left = true;
	} else
	{
		is_rotating = true;
		is_rotating_left = false;
	}
} else
{
	is_rotating = false;
}

// Change the rotation
if is_rotating_left
{
	if brush_rotation > 360
	{
		brush_rotation = 1;
	} else
	{
		brush_rotation += rotation_speed;
	}
} else if !is_rotating_left
{
	if brush_rotation < 0
	{
		brush_rotation = 359;
	} else
	{
		brush_rotation -= rotation_speed;
	}
}