/// @description Manage room change

// Call o_entity_abstract's Room Start event
event_inherited();

// Change the visibility
if(room == rm_friend_encounter) {
	visible = false;
}