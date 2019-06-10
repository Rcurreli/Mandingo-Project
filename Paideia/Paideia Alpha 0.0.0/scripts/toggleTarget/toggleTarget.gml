var attacker = argument0;
var scelta = argument1;
var array = argument2;

// You should really learn what a var is, Riccardo
var i = 0;

for(i = 0; i < array_length_1d(array); i++) {
	if((scelta == true) and (canReachTarget(attacker, array[i]) == true)
		and (array[i].isAlive == true)) {
		array[i].attackTarget = true;
		array[i].arrowCheck = false;
	}
	else {
		array[i].attackTarget = false;
	}
}