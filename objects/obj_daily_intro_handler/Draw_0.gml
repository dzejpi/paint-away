/// @description Draw the background & text
if autodisappearing
{
	if alpha > 0
	{
		alpha -= 0.01;
		draw_set_alpha(alpha);
	} else
	{
		instance_destroy();
	}
}

draw_set_alpha(alpha);

draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

draw_set_font(font_kenney_future_twenty_four);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

var legth = string_length(text[text_current]);

if (char_current < legth)
{
	char_current += char_speed;
}

var drawn_string = string_copy(text[text_current], 1, char_current);
draw_text(text_x, text_y,  drawn_string);

draw_set_alpha(1);