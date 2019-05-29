/// @description The child attack
// The child attacks
// ALERT This is very likely obsolete

if(!instance_exists(obj_textevent)){
	phase = o_battleManager.phase;
	phase ++;
	phase %= 2;
	o_battleManager.phase = phase;
	// Call the parent
	instance_destroy(radioClass);
}
