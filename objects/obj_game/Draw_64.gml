if(room != rm_menu && instance_exists(obj_Player) && global.kills > 0){
	killtextscale = max(killtextscale * 0.95, 1);
	s_draw_set_text(c_black, fnt_menu, fa_right, fa_top);
	draw_text_transformed(RES_W - 8, 12, string(global.kills) + " Bad people", killtextscale, killtextscale, 0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W - 10, 10, string(global.kills) + " Bad people", killtextscale, killtextscale, 0);
}