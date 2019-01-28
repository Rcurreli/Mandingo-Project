/// @description Initialize the Father

death = false;
finale = 0;
// Specific actions
// The father name
characterName = "Father";

// The father sprites
idleSprite = s_father_idle;
walkDownSprite = s_father_front;
walkUpSprite = s_father_back;
walkLeftSprite = s_father_left;
walkRightSprite = s_father_right;

// The character choices targets
workTarget = o_target_fatherWorkChoice;
playTarget = o_target_fatherPlayChoice;
homeTarget = o_target_fatherHomeChoice;

path = path_add();
target = noone;

// Wether the character did choose something
hasChosen = noone;

// Wether the character has ended their turn
hasEnded = false;

// Wether the character is idle or not



// The character choices targets

alarm[0] = noone;

/// @description Initialize the character

// The character name

// The character sprites


isIdle = true;

