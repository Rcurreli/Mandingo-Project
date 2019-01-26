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

// The father choices
playChoice = o_father_play;
workChoice = o_father_work;
homeChoice = o_father_home;
helpAChoice = o_father_helpA;
helpBChoice = o_father_helpB;