/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Change the visibility
if(room != rm_corridorsAbstract) {
	visible = false;
	x = -150;
	y = -150;
}

if(room == rm_corridorsAbstract && (global.roomcamefrom == rm_avventura or global.roomcamefrom == rm_dialogo)){	
		x = startPositionX;
		y = startPositionY;
		visible = true;
}


