/// @description Insert description here
// You can write your code in this editor
	
if(room == rm_dialogo) {
// Get the new log if you haven't ended it already
	
	if(instance_exists(obj_textbox) == false) {
		if(friendGroup.stato == -1){
			friendGroup.isAlive = false;
		}
		global.roomcamefrom = room;
		room_goto(overworld);
	}

}
	