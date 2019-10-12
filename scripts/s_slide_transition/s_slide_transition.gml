/// @desc s_slide_transition(mode, target_room)
/// @arg Mode stets transition mode between next, restart and goto.
/// @arg Target sets target room when using the goti mode.

with(obj_transition){
	mode = argument[0];
	if(argument_count > 1){
		target = argument[1];
	}
}