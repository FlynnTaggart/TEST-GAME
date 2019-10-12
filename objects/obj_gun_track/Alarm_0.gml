if(global.has_gun == true && global.has_shotgun == true){
	with(obj_shotgun){
		instance_destroy();	
	}
}
//var flag = false;
if(global.has_shotgun == true){
	instance_create_layer(obj_Player.x, obj_Player.y, "Gun", obj_shotgun);
	//flag = true;
}
else if(global.has_gun == true){
	instance_create_layer(obj_Player.x, obj_Player.y, "Gun", obj_gun);
}