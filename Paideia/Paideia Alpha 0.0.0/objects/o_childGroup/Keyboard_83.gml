/// @description Move down

if((isInTheOverworld() == true)  && !instance_exists(obj_textevent)) {
	if(vspeed == 0){
		
		vspeed += mySpeed;
		if(vspeed > mySpeed){
			vspeed = mySpeed;
		}
	}

	
	else if(keyboard_check_pressed(ord("W"))){
		vspeed = 0;	
	}
}