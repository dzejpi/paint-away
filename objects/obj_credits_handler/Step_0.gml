/// @description Insert description here
// You can write your code in this editor
if countdown > 0
{
	countdown -= 1;
} else
{
	if !game_ended
	{
		room_goto(room_main_menu);
		game_ended = true;
	}
}