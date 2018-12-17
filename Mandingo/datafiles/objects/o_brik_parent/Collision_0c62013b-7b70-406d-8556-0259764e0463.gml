/// @description Insert description here
// You can write your code in this editor


instance_destroy();


numero_bricks = instance_number(o_brik_parent);


if(numero_bricks == 0 && instance_number(o_brik_gray) == 0){
	instance_destroy(o_ball);
	o_manager.alarm[1] = room_speed * 3;
}