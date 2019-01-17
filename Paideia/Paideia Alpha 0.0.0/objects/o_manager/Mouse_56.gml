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
	
// Battle
	case rm_enemy_encounter:

// Do this if the battle isn't over yet
		if(is_battle_ended == false) {
			log = "Turno " + string(battle_turn + 1) + ":";
		
// A new turn is beginning
			battle_turn++;

// If none has died, then the battle is still on
			if((o_player.current_health > 0) and (current_enemy.current_health > 0)) {
	
// Decide if it's the enemy turn to attack
				if((battle_turn % current_enemy.attack_speed) == 0)
					and (current_enemy.current_health > 0) {
						log += attackAndCounter(current_enemy, o_player);
				}
	
// Decide if it's the player turn to attack
				if((battle_turn % o_player.attack_speed) == 0) 
					and (o_player.current_health > 0) {
						log += attackAndCounter(o_player, current_enemy);
				}
	
// If none attacks, just change the battle log
				if(((battle_turn % o_player.attack_speed) != 0)
					and ((battle_turn % current_enemy.attack_speed) != 0)) {
						log += " Nessun attacco";
				}
			}
// Do this if the battle is over
// If someone has died, and it's not the player, the player wins
			else if(o_player.current_health > 0) {
				log = "Il Figlio di eroe ha vinto!" 
					+ "\nClick sinistro per terminare la battaglia";
				is_battle_ended = true;
				current_enemy.is_alive = false;
			}

// If someone has died, and it's (at least) the player, the player looses
			else {
				log = "Il Figlio di eroe ha perso!"
					+ "\nClick sinistro per terminare la battaglia";
				is_battle_ended = true;
				o_player.is_alive = false;
			}
		}

// If the battle has ended, go back to the overworld
		else {
			battle_turn = 0;
			room_goto(rm_overworld);	
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