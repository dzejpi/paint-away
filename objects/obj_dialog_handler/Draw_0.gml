/// @description Insert description here
// You can write your code in this editor

draw_rectangle_color(text_x - (indentation/4), text_y - (indentation/4), 1056 - (indentation*2/2), text_y - (indentation/2) + (indentation*2), c_blue, c_blue, c_blue, c_blue, false);

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
