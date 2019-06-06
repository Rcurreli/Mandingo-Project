/// @description Manage room end

// Avoid the victory / defeat sound to linger after exiting the room
if(o_roomManager.roomType == roomTypes.fieldBattle) {
	audio_stop_sound(ost_Defeat);
	audio_stop_sound(ost_Victory);
}