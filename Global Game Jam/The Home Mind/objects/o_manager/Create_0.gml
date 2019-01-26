/// @description Initialize the game

// The characters relationships
relationBetweenPartners = 0;
relationWithFather = 0;
relationWithMother = 0;

// Grid

hNumeberCells = 120;
vNumeberCells = 66;

cellWidth = 16;
cellHeight = 16;

grid = mp_grid_create(0,0,hNumeberCells,vNumeberCells,cellWidth,cellHeight);

mp_grid_add_instances(grid,o_wall,false);