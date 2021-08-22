/// @description Insert description here
// You can write your code in this editor
instance_create_depth(160, 96, 0, obj_new_game_button);
instance_create_depth(160, 168, 0, obj_sound_button);
instance_create_depth(160, 240, 0, obj_quit_button);

// Text colors
buttonTextColor = make_colour_rgb(234, 224, 221);
shadowTextColor = make_colour_rgb(89, 77, 77);

// Appearance
alphaImage = 0;
transitionSpeed = 0.025;

audio_group_load(audiogroup_default);