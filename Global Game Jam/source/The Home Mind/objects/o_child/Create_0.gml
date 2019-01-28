finale = 0;
death = false;
// Specific actions
// The child name
characterName = "Child";

// The child sprites
idleSprite = s_child_idle;
walkDownSprite = s_child_front;
walkUpSprite = s_child_back;
walkLeftSprite = s_child_left;
walkRightSprite = s_child_right;

// The character choices targets
workTarget = o_target_childWorkChoice;
playTarget = o_target_childPlayChoice;
homeTarget = o_target_childHomeChoice;

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

