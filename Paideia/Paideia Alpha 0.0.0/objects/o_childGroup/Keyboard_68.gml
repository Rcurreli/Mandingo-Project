/// @description Move right

if((room >= rm_corridorsAbstract && room <= rm_avventura3)  && !instance_exists(obj_textevent)) {
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