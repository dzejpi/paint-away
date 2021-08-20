/// @description Insert description here
// You can write your code in this editor
if alphaImage < 1
{
	alphaImage += transitionSpeed;
}

draw_set_alpha(alphaImage);

// Alignment
draw_set_font(font_kenney_future_twenty_four);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Shadow
draw_set_colour(shadowTextColor);
draw_text(432 + 1, 148 + 1, "Pain(t)");

// Button text
draw_set_colour(buttonTextColor);
draw_text(432, 148, "Pain(t)");

// Shadow
draw_set_colour(shadowTextColor);
draw_text(432 + 1, 196 + 1, "Away");

// Button text
draw_set_colour(buttonTextColor);
draw_text(432, 196, "Away");

draw_set_alpha(1);