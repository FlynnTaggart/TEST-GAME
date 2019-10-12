alarm[0] = 1;
if(global.has_gun == true && global.has_shotgun == true){
	with(obj_gun){
		instance_destroy();	
	}
}