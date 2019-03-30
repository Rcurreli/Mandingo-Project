// Rename arguments for readability
var characterToSpawn = argument0;
var xCoord = argument1;
var yCoord = argument2;

// Coordinates are useless, as they're provided in the Room Start event of
// o_entityAbstract
return instance_create_layer(xCoord, yCoord, "Characters", characterToSpawn);