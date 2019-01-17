/// @description Initialize the player

// Call o_entity_abstract's Create event
event_inherited();

// Change the player visibility
is_visible = true;
sprite = sprite_index;

// Change the player coordinates
enemy_encounter_x = 288;
enemy_encounter_y = 192;
friend_encounter_x = 128;
friend_encounter_y = 224;

// Change the statistics
attack = 1;
defense = 3;
max_health = 3 * o_manager.base_health;
current_health = max_health
attack_speed = 3;