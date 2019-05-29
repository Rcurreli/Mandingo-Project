/// @description Initialize the game
randomize();

// Enumeration of the room classes
// Riccardo took it out without my permission. Signed Matteo

// Enumeration of the battle roles
enum battleRoles {
// Defense roles
	hoplite,
	axeman,
// Attack roles
	swordman,
// Ranged roles
	archer,
	peltast
}

// Enumeration of the genders
// 2 c00l 4 b00l
enum genders {
	male,
	female
}

// Enumeration of character powers
enum characterPowers {
	lowCharacterPower = 1,
	middleCharacterPower = 4,
	highCharacterPower = 16
}

// Enumeration of the attack values
enum attackValues {
	lowAttack = 1,
	middleAttack = 2,
	highAttack = 3
}

// Enumeration of the defense values
enum defenseValues {
	lowDefense = 1,
	goodDefense = 2,
	middleDefense = 3,
	highDefense = 4
}


// Enumeration of the attack speed values
enum attackSpeedValues {
	lowAttackSpeed = 4,
	middleAttackSpeed = 2,
	highAttackSpeed = 1
}

// Enumeration of the lines
enum lines {
	firstLine,
	secondLine,
	thirdLine
}

// WORKAROUND Enumeration of the character types
enum characterTypes {
	child,
	enemy,
	friend
}

// Enumeration of the room types
// Sometimes they do come back, Riccardo
enum roomTypes {
// Technical types
	outOfGame,
// Overworld types
	entranceField,
	settlement,
// Battle types
	fieldBattle,
// Encounter types
	theLameEcounter,
	greekEncounter,
	childEncounter
}

// GUI; OUTDATED delete them once the FC Dialogue System is fully implemented
//baseOffset = room_width / 16;
//xOffset = 3 * baseOffset;
//yOffset = 6 * baseOffset;
//textOffset = baseOffset;
//log = "";

// Statistics
var baseAttack = attackValues.lowAttack;
var limitAttack = attackValues.highAttack;
var baseDefense = defenseValues.lowDefense;
var limitDefense = defenseValues.highDefense;
baseDamage = limitDefense - baseAttack;
baseHealth = calculateDamage(limitAttack, baseDefense);
//power(2, baseDamage + limitAttack - baseDefense);

// Game
isGameEnded = false;
isGameOver = false;

// Ask R. what this does
firstTime = 0;

// Buffer for the room change
previousRoom = noone;

// Buffers for the encounters
encounter = noone;
overworld = noone;

gameExit = false;