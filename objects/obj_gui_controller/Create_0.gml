/// @description Create GUI
depth = -1;
current_game_day = "";
current_objective = "";
timer = 0;
text_indentation = 32;

indentation = 84;

countdown_speed = 60;
timer_countdown = countdown_speed;

// First row
instance_create_depth(1056, 60 + (indentation * 0), 0, obj_color_1);
instance_create_depth(1056, 60 + (indentation * 1), 0, obj_color_2);
instance_create_depth(1056, 60 + (indentation * 2), 0, obj_color_3);
instance_create_depth(1056, 60 + (indentation * 3), 0, obj_color_4);
instance_create_depth(1056, 60 + (indentation * 4), 0, obj_color_5);
instance_create_depth(1056, 60 + (indentation * 5), 0, obj_color_6);
instance_create_depth(1056, 60 + (indentation * 6), 0, obj_color_7);
instance_create_depth(1056, 60 + (indentation * 7), 0, obj_color_8);

// Second row
instance_create_depth(1140, 60 + (indentation * 0), 0, obj_color_9);
instance_create_depth(1140, 60 + (indentation * 1), 0, obj_color_10);
instance_create_depth(1140, 60 + (indentation * 2), 0, obj_color_11);
instance_create_depth(1140, 60 + (indentation * 3), 0, obj_color_12);
instance_create_depth(1140, 60 + (indentation * 4), 0, obj_color_13);
instance_create_depth(1140, 60 + (indentation * 5), 0, obj_color_14);
instance_create_depth(1140, 60 + (indentation * 6), 0, obj_color_15);
instance_create_depth(1140, 60 + (indentation * 7), 0, obj_color_16);

// Third row
instance_create_depth(1224, 60 + (indentation * 0), 0, obj_brush_1);
instance_create_depth(1224, 60 + (indentation * 1), 0, obj_brush_2);
instance_create_depth(1224, 60 + (indentation * 2), 0, obj_brush_3);
instance_create_depth(1224, 60 + (indentation * 3), 0, obj_brush_4);
instance_create_depth(1224, 60 + (indentation * 4), 0, obj_brush_5);
instance_create_depth(1224, 60 + (indentation * 5), 0, obj_brush_6);
instance_create_depth(1224, 60 + (indentation * 6), 0, obj_brush_7);
instance_create_depth(1224, 60 + (indentation * 7), 0, obj_brush_8);