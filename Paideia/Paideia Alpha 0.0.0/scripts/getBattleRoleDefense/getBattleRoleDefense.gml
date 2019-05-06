// Rename arguments for readability
var battleRole = argument0;

switch(battleRole) {
	case battleRoles.archer:
	case battleRoles.peltast:
		return defenseValues.lowDefense;
	break;
	
	case battleRoles.swordman:
		return defenseValues.middleDefense;
	break;
	
	case battleRoles.axeman:
		return defenseValues.goodDefense;
	break;
	
	case battleRoles.hoplite:
		return defenseValues.highDefense;
	break;
}