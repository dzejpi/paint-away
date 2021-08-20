/// @description Pressed logic
event_inherited();

if isPressed = true
{
	if !gameStarted
	{
		room_goto(room_main_game);
		gameStarted = true;
	}
}