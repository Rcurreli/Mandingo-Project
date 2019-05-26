// Rename the arguments for readability
var battleRole = argument0;
var gender = argument1;

// Again, 2 c00l 4 b00l
switch(gender) {

// Male battle role names
	case genders.male:
		switch(battleRole) {
			case battleRoles.hoplite:
				return "Oplita";
			break;
	
			case battleRoles.axeman:
				return "Guerriero con ascia";
			break;
	
			case battleRoles.swordman:
				return "Spadaccino";
			break;
	
			case battleRoles.archer:
				return "Arciere";
			break;
	
			case battleRoles.peltast:
				return "Peltasta";
			break;
		}
	break;

// Female battle role names
	case genders.female:
		switch(battleRole) {
			case battleRoles.hoplite:
				return "Oplitessa";
			break;
	
			case battleRoles.axeman:
				return "Guerriera con ascia";
			break;
	
			case battleRoles.swordman:
				return "Spadaccina";
			break;
	
			case battleRoles.archer:
				return "Arciera";
			break;
	
			case battleRoles.peltast:
				return "Peltastessa";
			break;
		}
	break;
}