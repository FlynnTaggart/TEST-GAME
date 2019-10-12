x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

if(place_meeting(x, y, obj_shootable)){
	with(instance_place(x, y, obj_shootable)){
		hp--;
		flash = 3;
		hit_from = other.direction;
	}
	instance_destroy();
}

if(place_meeting(x, y, obj_wall)){
	while(place_meeting(x, y, obj_wall)){
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	spd = 0;
	instance_change(obj_bullet_hit, true);
	layer_add_instance("Tiles", id);
	depth += 1;
	image_xscale = 0.5;
	image_yscale = 0.5;
}