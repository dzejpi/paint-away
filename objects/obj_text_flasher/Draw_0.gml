/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alpha)

draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

draw_set_font(text_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(text_color);

draw_text(room_width/2, room_height/2, text_displayed);

draw_set_alpha(1);