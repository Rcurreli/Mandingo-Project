// Rename the arguments for readability
var attack = argument0;
var defense = argument1;

// If the damage formula will ever change, change this return
return power(2, o_manager.baseDamage + attack - defense);