/// @description Initialize the game

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
	archer, peltast,
// Support roles
	messenger
}

// GUI; OUTDATED delete them once the FC Dialogue System is fully implemented
baseOffset = room_width / 16;
xOffset = 3 * baseOffset;
yOffset = 6 * baseOffset;
textOffset = baseOffset;
log = "";

// Statistics; OUTDATED change them once the implementation of the battle system starts
var leastCommonMultipleDefense = 6;
baseDamage = leastCommonMultipleDefense;
var leastCommonMultipleAttack = 2;
var leastCommonMultipleDamage = baseDamage * leastCommonMultipleAttack;
baseHealth = leastCommonMultipleDamage;

// Game
isGameEnded = false;
isGameOver = false;

// Ask R. what this does
firstTime = 0;

// Buffers for the encounters
encounter = noone;
overworld = noone;