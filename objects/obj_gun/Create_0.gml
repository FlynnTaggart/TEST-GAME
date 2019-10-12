firing_delay = 0;
recoil = 0;
controller_angle = 0;
if(room != rm_menu && global.has_gun == false)
	instance_destroy();
	
if(global.has_shotgun == true){
	with(obj_shotgun){
		instance_destroy();	
	}
}
