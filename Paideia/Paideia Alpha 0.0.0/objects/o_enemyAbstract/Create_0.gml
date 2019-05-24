/// @description Initialize the enemy

// Call the parent
event_inherited();

//Specific actions
// WORKAROUND Who I am?
whoIam = characterTypes.enemy;

// Encounter coordinates
enemyEncounterX = 736;
enemyEncounterY = 192;

attackTarget = false;
/*
// Statistics
attack = 2;
defense = 2;
maxHealth = 2 * o_manager.baseHealth;
currentHealth = maxHealth;
attackSpeed = 2; */