/// @description Insert description here
// You can write your code in this editor

if(attackTarget == true){
// Let the battle manager know this is the target
	o_battleManager.currentTarget = id;
	instance_destroy(o_arrowEnemy);
	with(o_buttonAttack){
		event_user(0);
	}
}