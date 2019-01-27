/// @description Initialize the mother

// Call the parent
event_inherited();

// Specific actions
// The mother name
characterName = "Mother";

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