/// @description Initialize the child

// Call the parent
event_inherited();

// Specific actions
// The child name
characterName = "Child";

// The child sprites
idleSprite = s_child_idle;
walkDownSprite = s_child_front;
walkUpSprite = s_child_back;
walkLeftSprite = noone;
walkRightSprite = noone;

// The child choices