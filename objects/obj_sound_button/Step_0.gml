/// @description Pressed logic
event_inherited();

if isPressed = true
{
	buttonText = "Sounds on";
	audio_group_set_gain(audiogroup_default, 1, 0);

} else
{
	buttonText = "Sounds off";
	audio_group_set_gain(audiogroup_default, 1, 0);

}