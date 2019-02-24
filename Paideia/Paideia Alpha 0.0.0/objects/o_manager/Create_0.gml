/// @description Initialize the game

// Enumeration of the room classes
enum roomClasses {
	gameStart, gameEnd,
	entranceField, settlement,
	fieldBattle
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