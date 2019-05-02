/// @description Insert description here
// You can write your code in this editor
	
if(o_roomManager.roomClass == roomClasses.settlement) {
// Get the new log if you haven't ended it already
	
	if(instance_exists(obj_textbox) == false) {
		friendGroup.isAlive = false;
		room_goto(overworld);
	}

}
	