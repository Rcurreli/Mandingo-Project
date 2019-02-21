/// @description Initialize the friend

// Call the parent
event_inherited();

// Specific actions
// Encounter coordinates
friendEncounterX = 192;
friendEncounterY = 224;

// Talk-related info
talkLength = 2;
log = ["??? - Oh cielo! Sbaglio, o sei ferito?\n" +
		"Ecco, lascia che mi occupi di te.",
	"Figlio di eroe: Grazie. Posso chiederti chi sei?"
		+ "\n??? - Oh, sono solo un povero vecchio, cieco e zoppo."
	];