// Rename arguments for readability
var characterToSpawn = argument0;

// Coordinates are useless, as they're provided in the Room Start event of
// o_entityAbstract
return instance_create_layer(0, 0, "Characters", characterToSpawn);