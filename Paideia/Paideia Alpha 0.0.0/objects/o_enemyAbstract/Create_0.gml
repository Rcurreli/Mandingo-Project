/// @description Initialize the enemy

// Call the parent
event_inherited();

//Specific actions
// Encounter coordinates
enemyEncounterX = 736;
enemyEncounterY = 192;

// Statistics
attack = 2;
defense = 2;
maxHealth = 2 * o_manager.baseHealth;
currentHealth = maxHealth;
attackSpeed = 2;

// Name
name = "Soldato minoico";