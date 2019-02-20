/// @description Interact

switch(room) {

// Start
	case rm_start:
		room_goto(rm_overworld);
	break;

// End
	case rm_overworld:
		if((current_enemy != noone) and (current_friend != noone)) {
			if((current_enemy.is_alive == false) and (current_friend.is_alive == false)) {
				room_goto(rm_end);
			}
		}
	break;
	
// Talk
	case rm_friend_encounter:

// Decide what the friend say
		switch(talk_current) {
			case 0:
				o_player.current_health = o_player.max_health;
				log = "??? - Oh cielo! Sbaglio, o sei ferito?\n" +
					"Ecco, lascia che mi occupi di te.";
			break;
			
			case 1:
				log = "Figlio di eroe: Grazie. Posso chiederti chi sei?"
					+ "\n??? - Oh, sono solo un povero vecchio, cieco e zoppo.";
			break;
		}

		// Unlock the next talk if you haven't ended it already
		if(talk_current < current_friend.talk_length) {
			talk_current++;
		}
		// If not, hide the friend and go back to the overworld
		else {
			current_friend.is_alive = false;
			room_goto(rm_overworld);
		}
	break;
}