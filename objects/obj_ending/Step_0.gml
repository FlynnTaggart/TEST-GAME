layer_x("Title_assets", min(layer_get_x("Title_assets") + 1, RES_W * 0.5 - 32));


letters += spd;
text = string_copy(end_text[current_line], 1, floor(letters));

if(letters >= length && keyboard_check_pressed(vk_anykey)){
	if(current_line + 1 == array_length_1d(end_text)){
		s_slide_transition(TRANS_MODE.PAUSE);
	}
	else{
		current_line++;
		letters = 0;
		length = string_length(end_text[current_line]);
	}
}