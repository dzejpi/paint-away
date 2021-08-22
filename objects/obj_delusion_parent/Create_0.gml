/// @description Insert description here
// You can write your code in this editor
stand_sprite = spr_blue_standing;
walk_sprite = spr_blue_walking;
climb_sprite = spr_blue_climbing;

sprite_index = stand_sprite;

is_climbing = false;
is_walking = false;

original_y_pos = 0;
climbing_to_y = 0;

original_x_pos = 0;
walking_to_x = 0;

going_back = false;

image_xscale = 0.5;
image_yscale = 0.75;

destroy_after = false;
destroy_immediately = false;