var correctEntrance = noone;
var i = 0;
show_debug_message(o_manager.previousRoom);
for(i = 0; i < instance_number(o_entrance); i++) {
	correctEntrance = instance_find(o_entrance, i);
	show_debug_message(correctEntrance.roomCameFrom)
	if(correctEntrance.roomCameFrom == o_manager.previousRoom) {
		show_debug_message("This one");
		return correctEntrance;
	}
}
return noone;