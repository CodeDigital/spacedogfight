draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);
draw_set_color(c_white);

var m;
for (m = 0; m<array_length_1d(menu); m+=1){

	draw_text(x + space, y + (m*space), string(menu[m]));

}

draw_sprite(sprite_index, 0, x + (space/2.5), (y + mPos*space) - 12);