// This script takes no arguments

switch (o_roomManager.roomType) {
	case roomTypes.entranceField:
	case roomTypes.settlement:
		return true;
	break;
	
	case roomTypes.fieldBattle:
	case roomTypes.theLameEcounter:
	case roomTypes.greekEncounter:
	case roomTypes.childEncounter:
	case roomTypes.outOfGame:
		return false;
	break;
}