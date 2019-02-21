// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return; TO DO change the damage formula
var damage = o_manager.baseDamage * attacker.attack / defender.defense;

// The defender gets hurt 
defender.currentHealth -= damage;

// Eventually kill the defender
killOnZeroHealth(defender);

return damage;