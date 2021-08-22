/// @description Insert description here
// You can write your code in this editor
depth = 2;

x_position = 528;
y_position = 24;

x_two_position = 1008;
y_two_position = y_position + 480 + 10;

canvas_width = x_two_position - x_position;
canvas_height = y_two_position - y_position;

my_surface = surface_create(canvas_width, canvas_height);