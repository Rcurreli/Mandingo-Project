// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var damage = 0;

// The defender gets hurt
damage = o_manager.base_damage * attacker.attack / defender.defense;
defender.current_health -= damage;

return damage;