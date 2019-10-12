if(instance_exists(follow)){
	x_to = follow.x;
	y_to = follow.y;
	
	if(follow.object_index == obj_dead_player){
		x = x_to;
		y = y_to
	}
}

x += (x_to - x) / 25;
y += (y_to - y) / 25;

x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if(layer_exists("Mountains")){
	layer_x("Mountains", x / 2);
	
}

if(layer_exists("Clouds")){
	layer_x("Clouds", x / 1.15);
	
}


if(layer_exists("Trees")){
	layer_x("Trees", x / 4);
	
}