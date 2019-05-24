// Rename the arguments for readability
var actor = argument0;
var target = argument1;

// Used for the controls
enemyFirstLineExists = findIfLineExists(target, lines.firstLine);
enemySecondLineExists = findIfLineExists(target, lines.secondLine);

switch(actor.line) {

// CASE 1: First and second line
	case lines.firstLine:
	case lines.secondLine:
		switch(target.line) {

// CASE 1.A: the enemy first line is always reachables for first and second line
			case lines.firstLine:
				return true;
			break;

// CASE 1.B: the enemy second line can't be reached by first and second line
// if the first line holds
			case lines.secondLine:
				if(enemyFirstLineExists == true) {
					return false;
				}
				else {
					return true;
				}
			break;

// CASE 1.C: the enemy third line can be reached by first and second line
// if they're the only enemies on the field
			case lines.thirdLine:
				if((enemyFirstLineExists == true)
					or (enemySecondLineExists == true)) {
						return false;
					}
				else {
					return true;
				}
			break;
		}
	break;

// CASE 2: Third line
	case lines.thirdLine:
		switch(target.line) {
			
// CASE 2.1: the enemy first and second line is always reachable by the
// third line
			case lines.firstLine:
			case lines.secondLine:
				return true;
			break;

// CASE 2.2: the enemy third line can be reached by the third line once either
// the enemy first line or the the enemy second line are no more
			case lines.thirdLine:
				if((enemyFirstLineExists == true)
					and (enemySecondLineExists == true)) {
						return false;
					}
				else {
					return true;
				}
			break;
		}
	break;
}