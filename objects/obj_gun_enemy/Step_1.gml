x = owner.x;
y = owner.y + 10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);
recoil = max(0, recoil - 1);
if(instance_exists(obj_Player)){
	if(obj_Player.x < x) 
		image_yscale = -image_yscale;
	if(point_distance(obj_Player.x, obj_Player.y, x, y) < 600){
		image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
		countdown--;
		if(countdown < 1){
			countdown = countdown_rate;
			if(!collision_line(x, y, obj_Player.x, obj_Player.y, obj_wall, false, false)){	
				recoil = max(0, recoil - 1);
				recoil = 4;
				s_screen_shake(2, 10);
				audio_sound_pitch(snd_shoot, choose(0.9, 1.0, 1.1));
				audio_play_sound(snd_shoot, 5, false);
				with(instance_create_layer(x, y, "Bullet", obj_bullet_enemy)){
					spd = 10;	
					direction = other.image_angle + irandom_range(-3, 3);
					image_angle = direction;
				}
			}
		}
	}
}
x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);