/// @description Manage some variables

switch(room) {
	case rm_start:
// Start GUI values
		x_offset = 3 * base_offset;
		y_offset = 7 * base_offset;
		log = "Teseo ha fallito l'impresa e Minosse ha conquistato la Grecia."
			+ "\nIl Figlio di eroe e' stato rinchiuso nel Labirinto come tanti Greci."
			+ "\nClick sinistro per iniziare."
			+ "\nScusa la fretta, ma vanno sperimentate le meccaniche."
	break;
	
	case rm_overworld:
// Overworld GUI values
		x_offset = 3 * base_offset;
		y_offset = 7 * base_offset;

// Check if the game has ended (victory)
		if((current_enemy != noone) and (current_friend != noone)) {
			if((current_enemy.is_alive == false) and (current_friend.is_alive == false)) {
				is_game_ended = true;
			}
		}
		
// Check if the game is over (defeat)
		if(o_player.is_alive == false) {
			is_game_over = true;
		}
		
		if(is_game_ended == false) {
			if(is_game_over == false) {
// The log contains the tutorial
				log = "Usa WASD per muovere il Figlio di eroe"
					+ "\nSe la salute scende a 0 il Figlio di eroe muore"
					+ "\nSalute: " + string(o_player.current_health) + " / "
					+ string(o_player.max_health);
			}
			else {
// The log contains an impossible-to-achieve death message
				log = "Come diamine hai fatto a morire???"
					+ "\nIl gioco era programmato per farti VINCERE!"
					+ "\nOra i cheater cercano di perdere? *sigh*";
			}
		}
		else {
// The log contains the game ended message
			log = "Brutte notizie: hai finito il gioco. Non c'e' altro."
				+ "\nSi', sono serio."
				+ "\nClick sinistro per terminare il prototipo";
		}
	break;
	
	case rm_end:
		x_offset = 3 * base_offset;
		y_offset = 6 * base_offset;
		log = "Il prototipo e' finito. Scusa se non ho approfondito la trama."
			+ "\nSempre che ti interessi, si intende."
			+ "\nSappi che non intendo mettere un auto-battle, intendo realizzare"
			+ "\ndelle azioni di battaglia (attacco e  guardia, per esempio)."
			+ "\nGli sprite, la mappa, l'interfaccia e il codice sono stati creati"
			+ "\nda Matteo Cuomo."
			+ "\nGrazie per l'attenzione.";
	break;
}