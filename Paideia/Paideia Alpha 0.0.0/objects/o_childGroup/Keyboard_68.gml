/// @description Move right

if((isInTheOverworld() == true)  && !instance_exists(obj_textevent)) {
	if(hspeed == 0){
		
		hspeed += mySpeed;
		if(hspeed > mySpeed){
			hspeed = mySpeed;
		}
	}

	
	else if(keyboard_check_pressed(ord("A"))){
		hspeed = 0;	
	}
}