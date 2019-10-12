global.has_shotgun = true;
instance_create_layer(obj_Player.x, obj_Player.y, "Gun", obj_shotgun);
instance_destroy();
//global.gun_in_hands = obj_shotgun;

if(global.has_gun == true){
	with(obj_gun){
		instance_destroy();	
	}
}
