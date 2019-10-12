vsp += grv;

if(grounded && afraid_of_heights && !place_meeting(x + hsp, y + 1, obj_wall)){
	hsp =- hsp;	
}
 
if(place_meeting(x + hsp, y, obj_wall)){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = -hsp;
}

x += hsp;

if(place_meeting(x, y + vsp, obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

/*var aim_side = obj_gun_enemy.image_xscale;
if(aim_side != 0) image_xscale = aim_side;*/

if(!place_meeting(x, y + 1, obj_wall)){
	grounded = 0;
	sprite_index = spr_enemy_jump;
	image_speed = 0;
	if(sign(vsp) > 0)
		image_index = 1;
	else
		image_index = 0;
}
else{
	grounded = 1;
	image_speed = 1;
	if(hsp == 0){
		sprite_index = spr_enemy;
	}
	else{
		sprite_index = spr_enemy_run;
		/*if(aim_side != sign(hsp)){
			sprite_index = spr_enemy_run_back;
		}*/
	}
}

if(hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;

