/// @description De/select button
if ((position_meeting(mouse_x, mouse_y, self)) && mouse_check_button_released(mb_left))
{
	audio_play_sound(snd_button_select, 10, false);
	selected = true;
	obj_variable_holder.selectedBrush = identifier;
}

if obj_variable_holder.selectedBrush != identifier
{
	selected = false;
} else
{
	selected = true;
}