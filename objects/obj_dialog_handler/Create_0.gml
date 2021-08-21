/// @description Insert description here
// You can write your code in this editor
indentation = 84;


text[0] = "Hello World";
text[1] = "This is a really, really, really, long and silly string to test that the line wrapping works okay.";

text_current = 0;
text_last = 1;
text_width = 1056 - (indentation*2);
text_x = x + indentation;
text_y = 60 + (indentation * 6);

char_current = 1;
char_speed = 0.25;

text[text_current] = scr_string_wrap(text[text_current], text_width);
