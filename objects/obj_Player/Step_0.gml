if(hascontrol){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
	/*
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
	}*/
}
else{
	key_left = 0;	
	key_right = 0;
	key_jump = 0;
}

var move = key_right - key_left;

hsp = (move * walksp) + gun_kick_x;
gun_kick_x = 0;
if(!place_meeting(x, y + 1, obj_wall))
	vsp = vsp + grv + gun_kick_y;
else
	vsp = vsp + grv;
gun_kick_y = 0 
canjump--;
if(canjump > 0 && key_jump){
	vsp = -7;
	canjump = 0;
}

if(place_meeting(x + hsp, y, obj_wall)){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if(place_meeting(x, y + vsp, obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

var aim_side = sign(mouse_x - x);
if(aim_side != 0) image_xscale = aim_side;

if(!place_meeting(x, y + 1, obj_wall)){
	sprite_index = spr_Player_jump;
	image_speed = 0;
	if(sign(vsp) > 0)
		image_index = 1;
	else
		image_index = 0;
}
else{
	canjump = 10;
	if(sprite_index = spr_Player_jump){
		audio_sound_pitch(snd_landing, choose(0.8, 1.0, 1.2));
		audio_play_sound(snd_landing, 4, false);
		repeat(5){
			with(instance_create_layer(x, bbox_bottom, "Player", obj_dust)){
				vsp = 0;
			}
		}
	}
	image_speed = 1;
	if(hsp == 0){
		sprite_index = spr_Player;
	}
	else{
		sprite_index = spr_Player_run;
		if(aim_side != sign(hsp)){
			sprite_index = spr_Player_run_back;
		}
	}
}
