global.has_gun = true;
instance_create_layer(obj_Player.x, obj_Player.y, "Gun", obj_gun);
instance_destroy();
//global.gun_in_hands = obj_gun;

if(global.has_shotgun == true){
	with(obj_shotgun){
		instance_destroy();	
	}
}
