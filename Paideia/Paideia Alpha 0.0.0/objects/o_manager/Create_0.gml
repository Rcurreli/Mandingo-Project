/// @description Initialize the game

// GUI
baseOffset = room_width / 16;
xOffset = 0;
yOffset = 0;
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