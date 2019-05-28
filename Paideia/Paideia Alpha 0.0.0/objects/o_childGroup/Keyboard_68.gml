/// @description Move right

if((isInTheOverworld() == true)  && !instance_exists(obj_textevent)) {
	if(hspeed == 0){
		
		hspeed += my_speed;
		if(hspeed > my_speed){
			hspeed = my_speed;
		}
	}

	
	else if(keyboard_check_pressed(ord("A"))){
		hspeed = 0;	
	}
}