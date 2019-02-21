/// @description Talk

if(room == rm_friendEncounter) {
// Decide what the friend say
	switch(talkCurrent) {
		case 0:
			o_childAbstract.currentHealth = o_childAbstract.maxHealth;
			talkLog = "??? - Oh cielo! Sbaglio, o sei ferito?\n" +
				"Ecco, lascia che mi occupi di te.";
		break;
			
		case 1:
			talkLog = "Figlio di eroe: Grazie. Posso chiederti chi sei?"
				+ "\n??? - Oh, sono solo un povero vecchio, cieco e zoppo.";
		break;
	}

// Unlock the next talk if you haven't ended it already
	if(talkCurrent < o_friendAbstract.talkLength) {
		talkCurrent++;
	}
	// If not, hide the friend and go back to the overworld
	else {
		o_friendAbstract.isAlive = false;
		room_goto(rm_overworld);
	}
}