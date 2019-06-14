/// @description Manage room change

if(room == rm_start){	
	create_textevent(["Teseo ha fallito l'impresa e Minosse ha conquistato la Grecia.",
			"Il Figlio di eroe e' stato rinchiuso nel Labirinto come tanti Greci.",
			"Click sinistro per iniziare.",
			"Scusa la fretta, ma vanno sperimentate le meccaniche."], -1);
}

			
// Start GUI values
	
if(room == rm_end){	
	create_textevent(["Fine della Demo!",
	"Siamo il team Matteo & CO e ti ringraziamo per aver giocato al nostro gioco",
	"Concept, Level Design, Musiche e Grafica a cura di Matteo Cuomo",
	"Coding: Matteo Cuomo, Lorenzo Casula, Riccardo Curreli e Saverio Pibiri",
	"Non lasciar arrugginire le armi: presto ne avrai ancora bisogno!"], -1);
}

	if(room == rm_corridorsAbstract){	
// Check if the game has ended (victory); TO DO change victory condition
		if(false) {
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
	}
