/// @description Insert description here
// You can write your code in this editor

//---You can update variables here!---//
// FOR RICCARDO: I moved this logic from User Event 0 to Room Start
// because I wouldn't otherwise able to stop the music

switch(choice_variable){
	case -1:
	#region First Dialogue
		
		toggleTheLame(false);
		
		var i = 0;
		myText[i]		= "Bene, allora io vado";
		mySpeaker[i]	= o_Orestes;
		
		i++;
		myText[i]		= "Aspetta, Oreste! Non vorrai davvero andare da"
			+ " solo?";
		mySpeaker[i]	= o_Telemacus;
		
		i++;
		myText[i]		= "Certo non con Neottolemo o con il Troiano";
		mySpeaker[i]	= o_Orestes;
		
		i++;
		myText[i]		= "Ti ripeto che non sapevo che Ermione fosse gia'"
			+ " stata promessa a te!";
		mySpeaker[i]	= o_Neoptolemus;
		
		i++;
		myText[i] = "La guerra e' finita! Non siamo piu' nemici!";
		mySpeaker[i] = o_Ascanius;
		
		i++;
		myText[i] = "Finita o meno, fu a causa di questa guerra";
		mySpeaker[i] = o_Neoptolemus;
		
		i++;
		myText[i] = "che Minosse ha potuto conquistare la Grecia";
		mySpeaker[i] = o_Neoptolemus;
		
		i++;
		myText[i] = "Ascanio, ti prego, almeno tu ed io non andiamo da soli";
		mySpeaker[i] = o_Telemacus;
		
		i++;
		myText[i] = "Fu grazie a tuo padre che ci salvammo. Io combattero'"
			+ " insieme a te";
		mySpeaker[i] = o_Ascanius;
		
		i++;
		myText[i] = "Se tu combatterai insieme a lui, io non combattero'"
			+ " insieme a te, Telemaco";
		mySpeaker[i] = o_Neoptolemus;
		
		i++;
		myText[i] = "Su questo mi trovi d'accordo, temo";
		mySpeaker[i] = o_Orestes;
		
		i++;
		myText[i] = "Se ti sono di peso, andro' da solo";
		mySpeaker[i] = o_Ascanius;
		
		i++;
		myText[i] = "No, aspetta...";
		mySpeaker[i] = o_Telemacus;
		myScripts[i] = [toggleTheLame, true];
		
		i++
		myText[i] = "Insomma, silenzio!";
		mySpeaker[i] = o_theLame;
		
		i++
		myText[i] = "Il Labirinto e' pieno di furfanti, traditori, mostri...";
		mySpeaker[i] = o_theLame;
		
		i++
		myText[i] = "tra cui il Minotauro!";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Pensate forse che da soli potrete sopravvivere?";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Scusaci, anziano. Posso chiedere con chi ho l'onore di"
			+ " parlare?";
		mySpeaker[i] = o_Neoptolemus;
		
		i++;
		myText[i] = "Oh, solo un povero vecchio, cieco e zoppo";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Voi, invece, siete Figli, dico bene?";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Si', anziano";
		mySpeaker[i] = o_Ascanius;
		
		i++;
		myText[i] = "Oh, allora c'e' ancora speranza per la Grecia";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "se la discendenza degli eroi vive ancora";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Lasciate che vi aiuti";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Non offenderti, anziano, ma come puoi aiutarci?";
		mySpeaker[i] = o_Telemacus;
		
		i++;
		myText[i] = "Vi aiutero' a trovare la vostra strada";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Vorrete ritrovare le vostre genti, immagino";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Certo. Parla";
		mySpeaker[i] = o_Orestes;
		
		i++;
		myText[i] = "Piu' avanti ci sono dei ladri";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Hanno costruito una dogana per depredare"
			+ " i nuovi arrivati";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Oltre troverete dei Greci";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Siate ospitali con loro, poiche' sia loro che voi ne"
			+ " avete bisogno";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Oltre i Greci troverete un trivio; e poi...";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "E poi?";
		mySpeaker[i] = o_Telemacus;
		
		i++;
		myText[i] = "Scusate, non ricordo piu'. Meglio che riposi un po'";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Alla mia eta' non si puo' stare in piedi troppo a lungo";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Vuoi che stiamo con te finche' non ti sentirai meglio?";
		mySpeaker[i] = o_Ascanius;
		
		i++;
		myText[i] = "Non preoccupatevi, so badare a me stesso";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "E poi, i ladri saranno anche dei furfanti,"
			+ " ma non degli assassini";
		mySpeaker[i] = o_theLame;
		
		i++;
		myText[i] = "Grazie per l'aiuto, anziano";
		mySpeaker[i] = o_Telemacus;
		
		i++;
		myText[i] = "Avanti, andiamo! Prima troviamo la nostra gente, prima"
			+ " ci separiamo";
		mySpeaker[i] = o_Orestes;
		
		#endregion
	break;
}

// Initialize the unused dialogue variables with fake values
	myEffects = -1;
	myTextSpeed = -1;
	myTypes = -1;
	myNextLine = -1;
	myTextCol = -1;
	myEmotion = -1;
	myEmote = -1;
// Create the dialogue
	create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes,
		myNextLine, myScripts, myTextCol, myEmotion, myEmote);
	o_theLameGroup.stato--;