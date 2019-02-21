/// @description Manage some variables

switch(room) {
	case rm_start:
// Start GUI values
		xOffset = 3 * baseOffset;
		yOffset = 7 * baseOffset;
		log = "Teseo ha fallito l'impresa e Minosse ha conquistato la Grecia."
			+ "\nIl Figlio di eroe e' stato rinchiuso nel Labirinto come tanti Greci."
			+ "\nClick sinistro per iniziare."
			+ "\nScusa la fretta, ma vanno sperimentate le meccaniche."
	break;
	
	case rm_overworld:
// Overworld GUI values
		xOffset = 3 * baseOffset;
		yOffset = 7 * baseOffset;

// Check if the game has ended (victory); TO DO change victory condition
		if((o_enemyAbstract.isAlive == false) and (o_friendAbstract.isAlive == false)) {
				isGameEnded = true;
		}
		
// Check if the game is over (defeat)
		if(o_childAbstract.isAlive == false) {
			isGameOver = true;
		}
		
		if(isGameEnded == false) {
			if(isGameOver == false) {
// The log contains the tutorial
				log = "Usa WASD per muovere il Figlio di eroe"
					+ "\nSe la salute scende a 0 il Figlio di eroe muore";
			}
			else {
// The log contains an impossible-to-achieve death message; TO DO actually manage player death
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
		xOffset = 3 * baseOffset;
		yOffset = 6 * baseOffset;
		log = "Il prototipo e' finito. Scusa se non ho approfondito la trama."
			+ "\nSempre che ti interessi, si intende."
			+ "\nSappi che non intendo mettere un auto-battle, intendo realizzare"
			+ "\ndelle azioni di battaglia (attacco e  guardia, per esempio)."
			+ "\nGli sprite, la mappa, l'interfaccia e il codice sono stati creati"
			+ "\nda Matteo Cuomo."
			+ "\nGrazie per l'attenzione.";
	break;
}