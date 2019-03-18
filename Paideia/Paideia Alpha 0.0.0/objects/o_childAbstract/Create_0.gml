/// @description Initialize the child

// Call o_entity_abstract's Create event
event_inherited();

// Specific actions
// Player coordinates
enemyEncounterX = 288;
enemyEncounterY = 192;
friendEncounterX = 128;
friendEncounterY = 224;

// Statistics
attack = 1;
defense = 3;
maxHealth = 3 * o_manager.baseHealth;
currentHealth = maxHealth
attackSpeed = 3;