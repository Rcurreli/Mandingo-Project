// Rename arguments for readability
var battleRole = argument0;

switch(battleRole) {
	case battleRoles.hoplite:
	case battleRoles.axeman:
		return lines.firstLine;
	break;
	
	case battleRoles.swordman:
		return lines.secondLine;
	break;
	
	case battleRoles.archer:
	case battleRoles.peltast:
		return lines.thirdLine;
	break;
}