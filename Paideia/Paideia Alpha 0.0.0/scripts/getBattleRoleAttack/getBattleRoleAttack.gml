// Rename arguments for readability
var battleRole = argument0;

switch(battleRole) {
	case battleRoles.messenger:
		return attackValues.lowAttack;
	break;
	
	case battleRoles.hoplite:
	case battleRoles.swordman:
	case battleRoles.peltast:
		return attackValues.middleAttack;
	break;
	
	case battleRoles.archer:
	case battleRoles.axeman:
		return attackValues.highAttack;
	break;
}