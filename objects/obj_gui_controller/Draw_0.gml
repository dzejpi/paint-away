/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_kenney_future_twenty_four);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_colour(c_grey)

draw_text(0 + text_indentation + 2, 0 + (text_indentation * 1) + 2, current_game_day);
draw_text(0 + text_indentation + 2, 0 + (text_indentation * 2) + 2, current_objective);

if timer > 0
{
	draw_text(0 + text_indentation + 2, 0 + (text_indentation * 3) + 2, "Time: " + string(timer) + ".");
}

/*draw_set_colour(c_white)

draw_text(0 + text_indentation, 0 + (text_indentation * 1), current_game_day);
draw_text(0 + text_indentation, 0 + (text_indentation * 2), current_objective);

if timer > 0
{
	draw_text(0 + text_indentation, 0 + (text_indentation * 3), string(timer) + "s remaining.");
}*/
