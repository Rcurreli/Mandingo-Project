/// @description Initialize the game

// GUI
base_offset = room_width / 16;
x_offset = 0;
y_offset = 0;
text_offset = base_offset;
log = "";

// Statistics
least_common_multiple_defense = 6;
base_damage = least_common_multiple_defense;
least_common_multiple_attack = 2;
least_common_multiple_damage = base_damage * least_common_multiple_attack ;
base_health = least_common_multiple_damage;

// Battle
current_enemy = noone;
is_battle_ended = false;
battle_turn = 0;

// Talk
current_friend = noone;
is_talking_ended = false;
talk_current = 0;

// Game
is_game_ended = false;
is_game_over = false;