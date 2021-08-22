/// @description Draw the background & text

// Use nine-slice & magic numbers all over the place
draw_sprite_stretched(spr_dialog_back, 0, text_x - (indentation/1.5) - 12, text_y - (indentation/2.25), text_width + (indentation/1) + 20, (indentation*2.25) - 8)

draw_set_font(font_kenney_future_twenty_four);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

var legth = string_length(text[text_current]);

if (char_current < legth)
{
	char_current += char_speed;
	if frac(char_current) = 0 
	{
		audio_play_sound(snd_typewriter, 10, false);
	}
}

var drawn_string = string_copy(text[text_current], 1, char_current);
draw_text(text_x, text_y,  drawn_string);