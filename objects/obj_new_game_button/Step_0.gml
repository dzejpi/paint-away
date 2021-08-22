/// @description Pressed logic
event_inherited();

if isPressed = true
{
	if !gameStarted
	{
		room_goto(room_game_friday);
		instance_create_depth(x, y, 0, obj_next_room_transitioner);
		obj_next_room_transitioner.displayed_text = "";
		obj_next_room_transitioner.secondary_text = "";
		gameStarted = true;
	}
}