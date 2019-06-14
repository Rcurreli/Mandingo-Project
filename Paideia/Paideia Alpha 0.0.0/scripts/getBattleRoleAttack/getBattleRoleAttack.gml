// Rename arguments for readability
var battleRole = argument0;

switch(battleRole) {
	case battleRoles.peltast:
		return attackValues.lowAttack;
	break;
	
	case battleRoles.hoplite:
	case battleRoles.archer:
		return attackValues.middleAttack;
	break;
	
	case battleRoles.swordman:
	case battleRoles.axeman:
		return attackValues.highAttack;
	break;
}