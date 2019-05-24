/// @description Insert description here
// You can write your code in this editor
o_battleManager.attackText = "";

o_battleManager.attackText =  attackAndCounter(selected, o_battleManager.currentTarget);
o_battleManager.currentTarget = noone;

o_battleManager.attacco = true;

toggleTarget(selected, false, o_battleManager.enemies);


// The child is no longer active
o_battleManager.activeChilds = deleteFromArray(selected, o_battleManager.activeChilds);

selected.arrowCheck = false;




instance_destroy(selected.arrow);

instance_destroy(radioClass);

