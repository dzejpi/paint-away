/// @description De/select button
if ((position_meeting(mouse_x, mouse_y, self)) && mouse_check_button(mb_left))
{
	selected = true;
	obj_variable_holder.selectedColor = identifier;
}

if obj_variable_holder.selectedColor != identifier
{
	selected = false;
} else
{
	selected = true;
}