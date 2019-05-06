/// @description Initialize the game
randomize();

// Enumeration of the room classes
enum roomClasses {
// Out of the game room classes
	gameStart, gameOver, gameEnd,
// Field room classes
	entranceField,
// Settlement room classes
	settlement,
// Tower room classes
	towerGroundFloor, towerFirstFloor, towerTop,
// Battle room classes
	fieldBattle, minoanCommanderBattle
};

// Enumeration of the battle roles; TO DO assign a battle role to each character
enum battleRoles {
// Defense roles
	hoplite, axeman,
// Attack roles
	swordman,
// Ranged roles
	archer, peltast
}

// Enumeration of character powers
enum characterPowers {
	lowCharacterPower = 1,
	middleCharacterPower = 2,
	highCharacterPower = 4
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
	middleDefense = 2,
	goodDefense = 3,
	highDefense = 4
}


// Enumeration of the attack speed values
enum attackSpeedValues {
	lowAttackSpeed = 4,
	middleAttackSpeed = 2,
	highAttackSpeed = 1
}

// GUI; OUTDATED delete them once the FC Dialogue System is fully implemented
baseOffset = room_width / 16;
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
baseHealth = power(2, baseDamage + limitAttack - baseDefense);

// Game
isGameEnded = false;
isGameOver = false;

// Ask R. what this does
firstTime = 0;

// Buffers for the encounters
encounter = noone;
overworld = noone;

gameExit = false;