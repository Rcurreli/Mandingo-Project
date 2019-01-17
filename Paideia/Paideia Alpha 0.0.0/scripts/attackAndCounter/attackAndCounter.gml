// Rename the arguments for readability
attacker = argument0;
defender = argument1;

// The defender gets hurt
switch(attacker) {
	case o_player:
		battle_log = " Il Figlio di eroe attacca: ";
	break;
	
	case o_manager.current_enemy:
		battle_log = " Il Minoico attacca: ";
	break;
}

damage = o_manager.base_damage * attacker.attack / defender.defense;
defender.current_health -= damage;
battle_log += string(damage) + " danni!";

// The attacker gets hurt
switch(defender) {
	case o_player:
		battle_log += " Il Figlio di eroe contrattacca: ";
	break;
	
	case o_manager.current_enemy:
		battle_log += " Il Minoico contrattacca: ";
	break;
}

damage = o_manager.base_damage * defender.attack / attacker.defense;
attacker.current_health -= damage;
battle_log += string(damage) + " danni!\n";

// Return the battle log
return battle_log;