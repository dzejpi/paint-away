/// @description Insert description here
// You can write your code in this editor

indentation = 84;

// Left
draw_rectangle_color(x_position, y_position, x_position + 24, (y_two_position * 2), board_color, board_color, board_color, board_color, false);

// Middle
draw_rectangle_color(x_position - 12 + (drawing_board_width/2), y_position, x_position + 12 + (drawing_board_width/2), 60 + (indentation * 6), board_color, board_color, board_color, board_color, false);

// Right
draw_rectangle_color(x_two_position - 24, y_position, x_two_position, (y_two_position * 2), board_color, board_color, board_color, board_color, false);

// Accross
draw_rectangle_color(x_position, 60 + (indentation * 6) - 12, x_two_position, 60 + (indentation * 5) + 24, board_color, board_color, board_color, board_color, false);

draw_rectangle_color(x_position, 60 + (indentation * 7) - 12, x_two_position, 60 + (indentation * 6) + 24, board_color, board_color, board_color, board_color, false);