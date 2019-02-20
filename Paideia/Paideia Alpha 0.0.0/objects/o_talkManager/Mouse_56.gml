/// @description Talk

// Decide what the friend say
switch(talkCurrent) {
	case 0:
		o_player.current_health = o_player.max_health;
		talkLog = "??? - Oh cielo! Sbaglio, o sei ferito?\n" +
			"Ecco, lascia che mi occupi di te.";
	break;
			
	case 1:
		talkLog = "Figlio di eroe: Grazie. Posso chiederti chi sei?"
			+ "\n??? - Oh, sono solo un povero vecchio, cieco e zoppo.";
	break;
}

// Unlock the next talk if you haven't ended it already
if(talkCurrent < o_manager.current_friend.talk_length) {
	talkCurrent++;
}
// If not, hide the friend and go back to the overworld
else {
	o_manager.current_friend.is_alive = false;
	room_goto(rm_overworld);
}