/// @description Insert description here
// You can write your code in this editor


room_goto_next();
o_manager.vite = 3;


//una volta premuto start partono gli alarm per i power_up e per i malus
o_manager.alarm[2] = 30 * irandom_range(80,120);
o_manager.alarm[4] = 30 * irandom_range(120,180);