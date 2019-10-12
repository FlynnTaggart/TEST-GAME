with(obj_Player){
	if(hascontrol){
		hascontrol = false;
		if(room_speed == 30)
			room_speed = 60;	
		s_slide_transition(TRANS_MODE.GOTO, other.target_rm);
	}
}