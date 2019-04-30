/// @description Insert description here
// You can write your code in this editor

//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "??? - Oh cielo! Sbaglio, o sei ferito?";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Ecco, lascia che mi occupi di te.";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Grazie. Posso chiederti chi sei?";
		mySpeaker[i]	= o_Neoptolemus;
		
		//Line 4
		i++;
		myText[i]		= "??? - Oh, sono solo un povero vecchio, cieco e zoppo.";
		mySpeaker[i]	= id;

		
		#endregion
	break;
	

}