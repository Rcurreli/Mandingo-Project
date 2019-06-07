// Rename arguments for readability
var showOrNot = argument0;

if(showOrNot == true) {
	o_theLame.visible = true;
	audio_play_sound(ost_ThreeLegsAtTheEvening, 1, true);
}
else {
	o_theLame.visible = false;
	audio_stop_sound(ost_ThreeLegsAtTheEvening);
}