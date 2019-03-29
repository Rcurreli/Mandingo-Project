/// @description Move left

if(o_roomManager.roomClass == roomClasses.entranceField && !instance_exists(obj_textevent)) {
	if(hspeed == 0){
		
		hspeed -= 4;
		if(hspeed < -4){
			hspeed = -4;
		}
	}

	
	else if(keyboard_check_pressed(ord("D"))){
		hspeed = 0;	
	}
}