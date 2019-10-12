/// @desc s_screen_shake(magnitude, frames)
/// @arg Magnitude sets the strngth of the shake (radius in pixels)
/// @arg Frames sets the length of the shake in frames (60 = 1 sec(60 fps))

with(obj_camera){
	if(argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}