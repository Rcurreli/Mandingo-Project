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
				create_textevent(["Come diamine hai fatto a morire???",
				"Il gioco era programmato per farti VINCERE!",
				"Ora i cheater cercano di perdere? *sigh*"], -1);
			}
		}
		else {
// The log contains the game ended message
			create_textevent(["Brutte notizie: hai finito il gioco. Non c'e' altro.",
				"Si', sono serio.",
				"Click sinistro per terminare il prototipo"], -1);
		}
	break;
	
	case roomClasses.gameEnd:
		create_textevent(["Il prototipo e' finito. Scusa se non ho approfondito la trama.",
		"Sempre che ti interessi, si intende.",
		"Sappi che non intendo mettere un auto-battle, intendo realizzare",
		"delle azioni di battaglia (attacco e  guardia, per esempio).",
		"Gli sprite, la mappa, l'interfaccia e il codice sono stati creati",
		"da Matteo Cuomo & CO.",
		"Grazie per l'attenzione."], -1);
		
		gameExit = true;	
	break;
}