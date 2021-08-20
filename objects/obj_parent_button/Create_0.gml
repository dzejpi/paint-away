/// @description Variables
buttonText = "";
isPressed = false;

// Text colors
buttonTextColor = make_colour_rgb(234, 224, 221);
shadowTextColor = make_colour_rgb(89, 77, 77);

// Set sprite
sprite_index = spr_menu_button;

// Sprite is animated, stop it and switch to first inactive state
image_speed = 0;
image_index = 0;

// Double clicking prevention
doubleClickPrevention = 0;

// Appearance
alphaImage = 0;
transitionSpeed = 0.025;