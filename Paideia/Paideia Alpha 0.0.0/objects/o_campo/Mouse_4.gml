/// @description Insert description here
// You can write your code in this editor

show_debug_message("ciao");

if(instance_exists(o_buttonAttack)){
	if(!position_meeting(mouse_x, mouse_y, o_buttonBattleAbstract)
	&& !position_meeting(mouse_x, mouse_y, o_characterAbstract)){
		toggleTarget(o_buttonAbstract.selected, false, o_battleManager.enemies);
		o_enemyAbstract.arrowCheck = false;
		instance_destroy(o_buttonBattleAbstract);
		instance_destroy(o_arrowEnemy);
		
	}
}