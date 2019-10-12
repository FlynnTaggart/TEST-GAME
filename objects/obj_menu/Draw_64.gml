s_draw_set_text(c_white, fnt_menu, fa_right, fa_bottom);

for(var i = 0; i < menu_items; ++i){
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 2.5));
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy - offset, txt);
	draw_text(xx, yy + offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
	for_mouse_w = string_width(menu[menu_cursor]) * 2.65;
}

draw_set_color(c_black);
draw_rectangle(gui_wigth, gui_height - 300, gui_wigth + 900, gui_height, false);