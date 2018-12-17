/// @description Insert description here
// You can write your code in this editor


instance_destroy();

if(instance_exists(o_ball) == 0){
	o_manager.vite = o_manager.vite - 1;
	o_manager.alarm[0] = room_speed * 3;
}

