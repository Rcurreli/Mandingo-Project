/// @description Initialize the mother

// Call the parent
death = false;
// Specific actions
// The mother name
characterName = "Mother";

finale = 0;

// The mother sprites
idleSprite = s_mother_idle;
walkDownSprite = s_mother_front;
walkUpSprite = s_mother_back;
walkLeftSprite = s_mother_left;
walkRightSprite = s_mother_right;

// The character choices targets
workTarget = o_target_motherWorkChoice;
playTarget = o_target_motherPlayChoice;
homeTarget = o_target_motherHomeChoice;

path = path_add();
target = noone;

// Wether the character did choose something
hasChosen = noone;

// Wether the character has ended their turn
hasEnded = false;

// Wether the character is idle or not

alarm[0] = noone;

// The character choices targets

/// @description Initialize the character

// The character name


// The character sprites


isIdle = true;

