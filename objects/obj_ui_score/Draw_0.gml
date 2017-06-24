/// @description Draw current score

draw_self();

draw_set_font(fnt_score);
draw_set_color(c_black);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_text((x+sprite_width)- 8, y + 16, string(_score));
