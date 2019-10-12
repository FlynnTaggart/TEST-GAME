if(global.has_shotgun == 0){
	instance_destroy();
}
if(global.has_gun){
	instance_destroy();	
}

y = ystart + sin(get_timer()/200000) * 5;