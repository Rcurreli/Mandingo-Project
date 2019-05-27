/// @description Move down

if((room >= rm_corridorsAbstract && room <= rm_avventura3)  && !instance_exists(obj_textevent)) {
	if(vspeed == 0){
		
		vspeed += my_speed;
		if(vspeed > my_speed){
			vspeed = my_speed;
		}
	}

	
	else if(keyboard_check_pressed(ord("W"))){
		vspeed = 0;	
	}
}