/// @description The child attack

// The child attacks
o_battleManager.battleLog += attackAndCounter(selected, o_enemyAbstract);

// The child is no longer active
o_battleManager.activeChilds = deleteFromArray(selected,
	o_battleManager.activeChilds);

// Call the parent
event_inherited();