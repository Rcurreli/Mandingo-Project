/// @description Manage room change

// Stop the previous music, if any
if(roomMusic != noone) {
	audio_stop_sound(roomMusic);
}

// Change the music to play
switch(o_roomManager.roomClass) {
	case roomClasses.gameStart:
		roomMusic = noone;
	break;
	
	case roomClasses.gameEnd:
		roomMusic = noone;
	break;
	
	case roomClasses.entranceField:
		roomMusic = ost_Proemio;
	break;
	
	case roomClasses.settlement:
		roomMusic = ost_Polis;
	break;
	
	case roomClasses.fieldBattle:
		roomMusic = ost_BattagliaCampale;
	break;
}

// Start a new music, if any
if(roomMusic != noone) {
	audio_play_sound(roomMusic, 1, true);
}