if(room != rm_menu){
	if(hascontrol){
		key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
		key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
		key_jump = keyboard_check_pressed(vk_space);

		if(key_left || key_right || key_jump){
			controller = 0;
		}

		if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
			key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
			key_right = max(gamepad_axis_value(0, gp_axislh), 0);
			controller = 1;
		}

		if(gamepad_button_check_pressed(0, gp_face1)){
			key_jump = 1;
			controller = 1;	
		}
	}
	else{
		key_left = 0;	
		key_right = 0;
		key_jump = 0;
	}

	var move = key_right - key_left;

	hsp = move * walksp;

	vsp += grv;
	canjump--;
	if(canjump > 0 && key_jump){
		vsp = -7;
		canjump = 0;
	}
}