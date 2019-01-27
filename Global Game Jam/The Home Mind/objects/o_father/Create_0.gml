/// @description Initialize the Father

// Call the parent
event_inherited();

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