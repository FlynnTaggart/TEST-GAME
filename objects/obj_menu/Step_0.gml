menu_x += (menu_x_target - menu_x) / menu_speed;

if(menu_control){	
	if(keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if(menu_cursor >= menu_items) 
			menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if(menu_cursor < 0) 
			menu_cursor = menu_items - 1;;
	}
	if(keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_wigth + 400;
		menu_commited = menu_cursor;
		s_screen_shake(4, 30);
		menu_control = false;
		//audio_play_sound(snd_death, 10, false);
	}
	var mouse_y_gui = device_mouse_y_to_gui(0);
	var mouse_x_gui = device_mouse_x_to_gui(0);
	//var w = string_width(menu[menu_cursor]);
	for_mouse_w = string_width(menu[menu_cursor]) * 2.65;
	if(mouse_y_gui < menu_y && mouse_y_gui > menu_top && mouse_x_gui > for_mouse_w){
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 2.75);
		if(mouse_check_button_pressed(mb_left)){
			menu_x_target = gui_wigth + 400;
			menu_commited = menu_cursor;
			s_screen_shake(4, 30);
			menu_control = false;
			//audio_play_sound(snd_death, 10, false);
		}
	}
}


if(menu_x > gui_wigth + 250 && menu_commited != -1){
	switch(menu_commited){
		case 2: s_slide_transition(TRANS_MODE.NEXT); break;
		case 1: {
			if(!file_exists(SAFEFILE)){
				s_slide_transition(TRANS_MODE.NEXT);
			}
			else{
				var file = file_text_open_read(SAFEFILE);
				var target = file_text_read_real(file);
				global.kills = file_text_read_real(file);
				global.has_gun = file_text_read_real(file);
				global.has_shotgun = file_text_read_real(file);
				//global.gun_in_hands = file_text_read_real(file);
				file_text_close(file);
				s_slide_transition(TRANS_MODE.GOTO, target);		
			}
		}
			break;
		case 0: game_end(); break;
	}
}