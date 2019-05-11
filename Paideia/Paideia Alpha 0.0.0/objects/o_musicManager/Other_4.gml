/// @description Manage room change

// Stop the previous music, if any
if(roomMusic != noone) {
	audio_stop_sound(roomMusic);
}

// Change the music to play

	if(room == rm_start){	
		roomMusic = noone;
	}
	
	if(room == rm_corridorsAbstract){	
		roomMusic = ost_Proemio;
	}
	
	if(room == rm_end){	
		roomMusic = noone;
	}

	if(room == rm_battleAbstract){	
		roomMusic = ost_BattagliaCampale;
	}
	
	if(room == rm_dialogo){	
		roomMusic = ost_Polis;
	}
	/*
	case .towerGroundFloor:
		roomMusic = ost_Palazzo;
	break;
	
	case towerFirstFloor:
		roomMusic = ost_Palazzo_Crescendo;
	break;
	
	case towerTop:
		roomMusic = ost_Palazzo_Climax;
	break;
	*/

// Start a new music, if any
if(roomMusic != noone) {
	audio_play_sound(roomMusic, 1, true);
}