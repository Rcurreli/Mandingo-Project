/// @description Initialize the character

// The character name
characterName = "";

// The character sprites
idleSprite = noone;
walkDownSprite = noone;
walkUpSprite = noone;
walkLeftSprite = noone;
walkRightSprite = noone;

// Wether thecharacter did choose something
hasChosen = false;

// Wether the character is idle or not
isIdle = true;


// The character choices targets
workTarget = noone;
playTarget = noone;
homeTarget = noone;
helpA = noone;
helpB = noone;

// The character's path
path = path_add();
target = noone;

// The character psychic condition
stress = 0;
production = 0;