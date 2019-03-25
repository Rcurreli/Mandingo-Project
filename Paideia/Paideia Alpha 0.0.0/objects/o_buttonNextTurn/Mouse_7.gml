/// @description The child attack
// The child attacks

if(!instance_exists(obj_textevent)){
	o_battleManager.phase ++;

	show_debug_message("next turn avviato");


	// Call the parent
	event_inherited();
}