/// @description Talk

if(room == rm_friendEncounter) {
// Get the new log if you haven't ended it already
	if(talkCurrent < array_length_1d(friend.log)) {
		talkLog = friend.log[talkCurrent];
		talkCurrent++;
	}
	// If not, hide the friend and go back to the overworld
	else {
		friendGroup.isAlive = false;
		room_goto(rm_overworld);
	}
}