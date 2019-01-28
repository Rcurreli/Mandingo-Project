/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

		switch(o_father.finale) {
			case 1:
				draw_text_transformed(50,500,"Babbo nababbo\nabbandona la casa", 3, 3, 0);
			break;
			case 2:
				draw_text_transformed(50,500,"Babbo straccione\nviene buttato\nfuori di casa", 3, 3, 0);
			break;
			case 3:
				draw_text_transformed(50,500,"Babbo identico\ne rimane in casa", 3, 3, 0);
			break;
		}
		switch(o_mother.finale) {
			case 1:
				draw_text_transformed(675,500,"Mamma ricca\ne abbandona la casa", 3, 3, 0);
			break;
			case 2:
				draw_text_transformed(675,500,"Mamma sperpera tutto\ne viene allontanata\n dalla casa", 3, 3, 0);
			break;
			case 3:
				draw_text_transformed(675,500,"Mamma rimane uguale\ne sta in casa", 3, 3, 0);
			break;
		}
		switch(o_child.finale) {
			case 1:
				draw_text_transformed(1300,500,"Figlio diventa manager\ne abbandona la casa", 3, 3, 0);
			break;
			case 2:
				draw_text_transformed(1350,500,"Figlio perdigiorno\nviene calcinculato", 3, 3, 0);
			break;
			case 3:
				draw_text_transformed(1350,500,"Figlio immutato\ncome PeterPan\n resta in casa", 3, 3, 0);
			break;
		}