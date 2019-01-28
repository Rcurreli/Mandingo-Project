/// @description Move the child

if(o_manager.currentCharacter == 3) {
// Call the parent
	mp_grid_path(o_manager.grid, path, x, y, target.x, target.y, false);
	path_start(path, 3, path_action_stop, false);
	
}