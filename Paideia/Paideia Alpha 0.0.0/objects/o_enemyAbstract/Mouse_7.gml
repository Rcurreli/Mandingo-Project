/// @description Insert description here
// You can write your code in this editor

if(attackTarget == true){
	with(o_buttonAttack){
		event_user(0);
	}
	arrowCheck = false;
	instance_destroy(arrow);
}