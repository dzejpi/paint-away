/// @description Insert description here
// You can write your code in this editor
depth = -100;
alpha = 1;

indentation = 84;

text[0] = "I will tell you something. Press Space to continue.";
text[1] = "I spent the last few years in my room.";

text_current = 0;
text_last = 1;
text_width = 1112;
text_x = x + indentation;
text_y = 60 + (indentation * 3);

char_current = 1;
char_speed = 0.25;

text[text_current] = scr_string_wrap(text[text_current], text_width);

delay = 180;
auto_countdown = delay;

autodisappearing = false;