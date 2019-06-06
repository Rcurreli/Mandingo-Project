// Rename arguments for readability
var characterToSpawn = argument0;
var xCoord = argument1;
var yCoord = argument2;
var layerWhereToSpawn = argument3;

return instance_create_layer(xCoord, yCoord, layerWhereToSpawn, characterToSpawn);