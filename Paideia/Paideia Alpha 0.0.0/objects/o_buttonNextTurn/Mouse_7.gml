/// @description The child attack
// The child attacks

if(!instance_exists(obj_textevent)){
	phase = o_battleManager.phase;
	phase ++;
	phase %= 2;
	o_battleManager.phase = phase;
	// Call the parent
	event_inherited();
}