/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x, y, 0, obj_drawable_canvas);

depth = 10;
x_position = 516;
y_position = 12;

x_two_position = 1020;
y_two_position = y_position + 480 + 10;

drawing_board_width = x_two_position - x_position;
drawing_board_height = y_two_position - y_position;

board_color = make_color_rgb(164, 100, 34);