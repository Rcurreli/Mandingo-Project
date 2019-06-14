/// @description Initialize the thief

// Call the parent
event_inherited();

// Specific actions
// Name
name = " ladro";

// Character power
characterPower = characterPowers.lowCharacterPower;
 
fraseMorte = irandom_range(0, 3);
switch(fraseMorte){
	case 0:
		deathSentence = " non riesce a fuggire in tempo!"
		break;
	case 1:
		deathSentence = " chiede inutilmente pieta'!"
		break;
	case 2:
		deathSentence = " perde la borsa E la vita!"
		break;
	case 3:
		deathSentence = " cade di fronte ai Figli!"
		break;
}
	