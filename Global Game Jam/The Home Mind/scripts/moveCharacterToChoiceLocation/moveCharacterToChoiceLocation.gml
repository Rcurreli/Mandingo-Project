// Rename arguments for readability
character = argument0;
target = argument1;

// Create the path
path = path_add();

// Start the path
mp_grid_path(o_manager.grid, path, character.x, character.y, target.x, target.y, false);
path_start(path, 3, path_action_stop, false);