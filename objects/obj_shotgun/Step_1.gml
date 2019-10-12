if(room = rm_menu){
	x = obj_Player_menu.x;
	y = obj_Player_menu.y + 10;
	//if(obj_Player_menu.controller == 0)
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	/*else{
		var controller_h = gamepad_axis_value(0, gp_axisrh);	
		var controller_v = gamepad_axis_value(0, gp_axisrv);
		if(abs(controller_h) > 0.2 || abs(controller_v) > 0.2)
			controller_angle = point_direction(0, 0, controller_h, controller_v);
		image_angle = controller_angle;
	}*/
}
else{
	x = obj_Player.x;
	y = obj_Player.y + 7;

	//if(obj_Player.controller == 0)
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	/*else{
		var controller_h = gamepad_axis_value(0, gp_axisrh);	
		var controller_v = gamepad_axis_value(0, gp_axisrv);
		if(abs(controller_h) > 0.2 || abs(controller_v) > 0.2)
			controller_angle = point_direction(0, 0, controller_h, controller_v);
		image_angle = controller_angle;
	}*/
}
firing_delay--; 
recoil = max(0, recoil - 1);
if((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)) && firing_delay < 0){
	recoil = 4;
	firing_delay = 20;
	s_screen_shake(2, 10);
	audio_sound_pitch(snd_shoot, choose(0.9, 1.0, 1.1));
	audio_play_sound(snd_shoot, 5, false);
	for(i = 0; i < 5; ++i){
		with(instance_create_layer(x, y, "Bullet", obj_shotgun_frac)){
			//instance_create_layer(x, y, "Bullet", obj_shotgun_shot)
			spd = 15;
			direction = other.image_angle + irandom_range(-15, 15);
			image_angle = direction;
		}
	}
	with(obj_Player){
		gun_kick_x = lengthdir_x(1.5, other.image_angle-180);
		gun_kick_y = lengthdir_y(1, other.image_angle-180);
	}
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if(image_angle > 90 && image_angle < 270){
	image_yscale = -1;
}
else{
	image_yscale = 1;	
}