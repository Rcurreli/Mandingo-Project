/// @description Manage room change

// Change the music if the room type has changed
if(o_manager.previousRoomType != o_roomManager.roomType) {
// Stop the previous music, if any
	if(roomMusic != noone) {
		audio_stop_sound(roomMusic);
	}

// Change the music to play
	switch(o_roomManager.roomType) {

// Techincal rooms themes
		case roomTypes.outOfGame:
			roomMusic = noone;
		break;

// Overworld themes
		case roomTypes.entranceField:
			roomMusic = ost_Proem;
		break;
	
		case roomTypes.settlement:
			roomMusic = ost_Polis;
		break;

// Battle themes
		case roomTypes.fieldBattle:
			roomMusic = ost_FieldBattle;
		break;

// Friend encounters themes; TO DO add the themes
		case roomTypes.theLameEcounter:
			roomMusic = ost_ThreeLegsAtTheEvening;
		break;
		
		case roomTypes.greekEncounter:
			roomMusic = noone;
		break;
		
		case roomTypes.childEncounter:
			roomMusic = noone;
		break;
		
// Any other situation
		default:
			roomMusic = noone;
		break;
	}

// Start a new music, if any
	if(roomMusic != noone) {
		audio_play_sound(roomMusic, 1, true);
	}
}