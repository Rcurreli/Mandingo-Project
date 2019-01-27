/// @description Initialize the game

// Camera target
currentCharacter = 0;

// Time
// The game lasts 3 days
numberOfDay = 1;
// 1 = Morning, 2 = Afternoon, 3 = Evening
momentOfDay = 1;

// Statistics
// Characters relationships
relationBetweenPartners = 0;
relationWithFather = 0;
relationWithMother = 0;

// House points
homeSweetHome = 0;

// Grid
// Number of cells
hNumeberCells = 120;
vNumeberCells = 66;

// Cell dimensions
cellWidth = 16;
cellHeight = 16;

// Grid building
grid = mp_grid_create(0,0,hNumeberCells,vNumeberCells,cellWidth,cellHeight);
mp_grid_add_instances(grid,o_collider,false);

// GUI
// Wheter to show the dialogue box or not
isVisible = false;

// Text content
log = [""];
currentLog = [];
i = 0;