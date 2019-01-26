/// @description Initialize the game

// Characters relationships
relationBetweenPartners = 0;
relationWithFather = 0;
relationWithMother = 0;

// House points
homeSweetHome = 0;

// Camera
camera = camera_get_active();
target = noone;

// Grid
// Number of cells
hNumeberCells = 120;
vNumeberCells = 66;

// Cell dimensions
cellWidth = 16;
cellHeight = 16;

// Grid building
grid = mp_grid_create(0,0,hNumeberCells,vNumeberCells,cellWidth,cellHeight);
mp_grid_add_instances(grid,o_wall,false);

// Wheter to show the dialogue box or not
isVisible = false;

// Text content
log = [""];
currentLog = [];
i = 1;