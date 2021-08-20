/// @description Drawing
// Make the button appear at the beginning
if alphaImage < 1
{
	alphaImage += transitionSpeed;
}

draw_set_alpha(alphaImage);

// HTML5 font fix
fontIndentation = -1;

// Draw as selected if mouse is hovering above or the button is selected
if (position_meeting(mouse_x, mouse_y, id) || isPressed)
{
	draw_sprite(spr_menu_button, 1, x, y - fontIndentation);
} else	
{
	draw_sprite(spr_menu_button, 0, x, y - fontIndentation);
}

// Alignment to the center
draw_set_font(font_kenney_future_twelve);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Shadow
draw_set_colour(shadowTextColor);
draw_text(x + 1, y + 1, buttonText);

// Button text
draw_set_colour(buttonTextColor);
draw_text(x, y, buttonText);

draw_set_alpha(1);