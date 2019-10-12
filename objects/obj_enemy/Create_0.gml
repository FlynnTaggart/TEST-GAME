if(has_weapon){
	mygun = instance_create_layer(x, y, "Gun", obj_gun_enemy);
	with(mygun)
		owner = other.id;
}
else
	mygun = noone;