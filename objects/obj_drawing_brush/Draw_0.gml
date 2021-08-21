/// @description Drawing stuff
// Draw the handle
draw_sprite_ext(spr_brush_handle, 0, x, y, 2, 3, brush_rotation, c_white, 1);

// Draw proper brush with proper color
draw_sprite_ext(scr_get_proper_brush(), 0, x, y, 0.17, 0.17, brush_rotation, c_black, 1);
draw_sprite_ext(scr_get_proper_brush(), 0, x, y, 0.15, 0.15, brush_rotation, scr_get_proper_color(), 1);
