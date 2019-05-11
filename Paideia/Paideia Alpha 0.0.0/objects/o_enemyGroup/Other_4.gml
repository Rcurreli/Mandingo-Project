/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Change the visibility
if(room != rm_corridorsAbstract) {
	visible = false;
	x = 0;
	y = 0;
}

if(room == rm_corridorsAbstract && (global.roomcamefrom == rm_avventura or global.roomcamefrom == rm_dialogo)){	
		x = startPositionX;
		y = startPositionY;
		visible = true;
}


