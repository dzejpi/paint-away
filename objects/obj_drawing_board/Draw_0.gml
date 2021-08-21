/// @description Insert description here
// You can write your code in this editor

indentation = 84;

// Left
draw_sprite_stretched(spr_board_back, 0, x_position, y_position, x_position + 24 - x_position, (y_two_position * 2) - y_position)

// Middle
draw_sprite_stretched(spr_board_back, 0, x_position - 12 + (drawing_board_width/2), 0, x_position + 12 + (drawing_board_width/2) - (x_position - 12 + (drawing_board_width/2)), 60 + (indentation * 8) - y_position);

// Right
draw_sprite_stretched(spr_board_back, 0, (x_two_position - 24), y_position, x_two_position - (x_two_position - 24), (y_two_position * 2) - (y_position));

// Accross
x1 = x_position;
y1 = (60 + (indentation * 6) - 12) - 36;
x2 = x_two_position;

draw_sprite_stretched(spr_board_back, 0, x1, y1, x2 - x1, 32);

y1 = y1 + 96;
draw_sprite_stretched(spr_board_back, 0, x1, y1, x2 - x1, 32);