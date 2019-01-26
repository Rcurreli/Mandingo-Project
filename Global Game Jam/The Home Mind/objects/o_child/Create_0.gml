/// @description Initialize the child

// Call the parent
event_inherited();

// Specific actions
// The character name
characterName = "Child";

// The character choices
playVideogamesTimes = 0;


//child's path

path = path_add();
mp_grid_path(o_manager.grid, path, x, y, o_child_playVideogames.x,o_child_playVideogames.y,false);
path_start(path, 3,path_action_stop, false);