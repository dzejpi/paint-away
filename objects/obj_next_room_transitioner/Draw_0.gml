/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha);

draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

draw_set_alpha(1 - alpha);

draw_set_font(font_kenney_future_fourty_eight);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width/2, room_height/2, displayed_text)

draw_set_font(font_kenney_future_twenty_four);
draw_text(room_width/2, (room_height/2) + 48, secondary_text)

draw_set_alpha(1);
