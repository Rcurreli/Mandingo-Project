/// @description Initialize the talking

// The room to go back to
overworld = o_manager.overworld;

// The actors of the talk
childGroup = o_childGroup;
friendGroup = o_manager.encounter;
childs = spawnCharacters(childGroup.members);
spawnCharacters(friendGroup.members);
friend = friendGroup.members[0];

// The log
talkLog = "Il Figlio di eroe incontra un Greco!"
	+ "\nClick sinistro per parlare";

// Set talk values
isTalkingEnded = false;
talkCurrent = 0;