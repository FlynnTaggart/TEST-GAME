letters += spd;
text_current = string_copy(text, 1, floor(letters));

draw_set_font(fnt_sign);
if(h == 0) 
	h = string_height(text);
w = string_width(text_current);

if(letters >= length && keyboard_check(vk_anykey)){
	instance_destroy();
	with(obj_camera)
		follow = obj_Player;
}