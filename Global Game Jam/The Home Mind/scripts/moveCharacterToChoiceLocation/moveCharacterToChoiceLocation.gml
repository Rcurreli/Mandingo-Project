// Rename arguments for readability
character = argument0;
target = argument1;

// Start the path
mp_grid_path(o_manager.grid, character.path, character.x, character.y, target.x, target.y, false);
path_start(character.path, 3, path_action_stop, false);