/// @description The child attack
// The child attacks

o_battleManager.textButton = attackAndCounter(selected, o_enemyAbstract);

o_battleManager.attacco = true;


// The child is no longer active
o_battleManager.activeChilds = deleteFromArray(selected,
	o_battleManager.activeChilds);


// Call the parent
event_inherited();
