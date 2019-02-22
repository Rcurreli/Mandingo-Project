/// @description Manage room change

// Stop the previous music
audio_stop_sound(roomMusic);

// Change the music to play
switch(room) {
	case rm_start:
		roomMusic = noone;
	break;
	
	case rm_overworld:
		roomMusic = snd_Proemio;
	break;
	
	case rm_enemyEncounter:
		roomMusic = snd_BattagliaCampale;
	break;
	
	case rm_friendEncounter:
		roomMusic = noone;
	break;
	
	case rm_end:
		roomMusic = noone;
	break;
}

// Start a new music, if any
if(roomMusic != noone) {
	audio_play_sound(roomMusic, 1, true);
}