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

// GUI
baseOffset = room_width / 16;
xOffset = 3 * baseOffset;
yOffset = 6 * baseOffset;
textOffset = baseOffset;
log = "";

// Statistics
var leastCommonMultipleDefense = 6;
baseDamage = leastCommonMultipleDefense;
var leastCommonMultipleAttack = 2;
var leastCommonMultipleDamage = baseDamage * leastCommonMultipleAttack;
baseHealth = leastCommonMultipleDamage;

// Game
isGameEnded = false;
isGameOver = false;