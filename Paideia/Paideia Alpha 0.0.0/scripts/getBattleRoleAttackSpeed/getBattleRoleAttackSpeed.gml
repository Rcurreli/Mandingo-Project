// Rename arguments for readability
var battleRole = argument0;

switch(battleRole) {
	case battleRoles.hoplite:
	case battleRoles.axeman:
		return attackSpeedValues.lowAttackSpeed;
	break;
	
	case battleRoles.swordman:
	case battleRoles.archer:
		return attackSpeedValues.middleAttackSpeed;
	break;
	
	case battleRoles.peltast:
		return attackSpeedValues.highAttackSpeed;
	break;
}