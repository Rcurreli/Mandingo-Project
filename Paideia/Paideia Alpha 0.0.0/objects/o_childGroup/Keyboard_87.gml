/// @description Move up

if((room >= rm_corridorsAbstract && room <= rm_avventura3)  && !instance_exists(obj_textevent)) {
	if(vspeed == 0 ){
		
		vspeed -=4;
		if(vspeed < -4){
			vspeed = -4;
		}
	}

	else if(keyboard_check_pressed(ord("S"))){
		vspeed = 0;	
	}
}