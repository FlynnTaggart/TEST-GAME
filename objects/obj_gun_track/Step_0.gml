if(instance_exists(obj_Player) && global.has_gun == true && global.has_shotgun == true){
	if(keyboard_check_pressed(ord("1"))){
		with(obj_shotgun){
			instance_destroy();
		}
		with(obj_gun){
			instance_destroy();
		}
		instance_create_layer(obj_Player.x, obj_Player.y, "Gun", obj_gun);
	}
	else if(keyboard_check_pressed(ord("2"))){
		with(obj_gun){
			instance_destroy();
		}
		with(obj_shotgun){
			instance_destroy();
		}
		instance_create_layer(obj_Player.x, obj_Player.y, "Gun", obj_shotgun);
	}
}