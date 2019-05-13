/// @description Insert description here
// You can write your code in this editor

if(instance_exists(o_buttonAttack)){
	if(!position_meeting(mouse_x, mouse_y, o_buttonBattleAbstract)
	&& !position_meeting(mouse_x, mouse_y, o_characterAbstract)){
		instance_destroy(o_buttonBattleAbstract);
		toggleTarget(false, o_battleManager.enemies);
		o_enemyAbstract.arrowCheck = false;
		instance_destroy(o_arrowEnemy);
		
	}
}