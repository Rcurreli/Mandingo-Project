/// @description Manage room change

switch(o_roomManager.roomClass) {
	case roomClasses.gameStart:
	
	create_textevent(["Teseo ha fallito l'impresa e Minosse ha conquistato la Grecia.",
			"Il Figlio di eroe e' stato rinchiuso nel Labirinto come tanti Greci.",
			"Click sinistro per iniziare.",
			"Scusa la fretta, ma vanno sperimentate le meccaniche."], -1);
	

			
// Start GUI values
	break;
	
	case roomClasses.entranceField:
// Check if the game has ended (victory); TO DO change victory condition
		if((o_enemyGroup.isAlive == false) and (o_friendGroupAbstract.isAlive == false)) {
				isGameEnded = true;
		}
		
// Check if the game is over (defeat)
		if(o_childGroup.isAlive == false) {
			isGameOver = true;
		}
		
		if(isGameEnded == false) {
			if(isGameOver == false) {
				if(firstTime == 0){
// The log contains the tutorial
					create_textevent(["Usa WASD per muovere il Figlio di eroe",
					"Se la salute scende a 0 il Figlio di eroe muore"], -1);
					firstTime = 1;
				}
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
	
	case roomClasses.gameEnd:
		log = "Il prototipo e' finito. Scusa se non ho approfondito la trama."
			+ "\nSempre che ti interessi, si intende."
			+ "\nSappi che non intendo mettere un auto-battle, intendo realizzare"
			+ "\ndelle azioni di battaglia (attacco e  guardia, per esempio)."
			+ "\nGli sprite, la mappa, l'interfaccia e il codice sono stati creati"
			+ "\nda Matteo Cuomo."
			+ "\nGrazie per l'attenzione.";
	break;
}