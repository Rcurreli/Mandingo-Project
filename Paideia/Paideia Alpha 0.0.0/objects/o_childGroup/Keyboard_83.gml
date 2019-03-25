/// @description Move down

if(getRoomClass() == roomClasses.entranceField && !instance_exists(obj_textevent)) {
	if(vspeed == 0){
		
		vspeed += 4;
		if(vspeed > 4){
			vspeed = 4;
		}
	}

	
	else if(keyboard_check_pressed(ord("W"))){
		vspeed = 0;	
	}
}