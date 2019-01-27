/// @description Draw the dialogues

if ((isVisible == true) and (o_manager.currentCharacter != 0)) {
	switch(o_manager.currentCharacter) {
		case 1:
			characterTemp = o_mother;
		break;
		case 2:
			characterTemp = o_father;
		break;
		case 3:
			characterTemp = o_child;
		break;
	}
	
	if(characterTemp.path_position == 1) {
// GUI coords
		GUIcoordX = characterTemp.x - (camera_get_view_width(camera_get_active()) / 2);
		GUIcoordY = characterTemp.y;
	
// Draw the background
		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(GUIcoordX, GUIcoordY, (GUIcoordX * 2),
			(GUIcoordY  * 2), false);
	
// Draw the text
		draw_set_alpha(1.0);
		draw_set_color(c_white);
		draw_text_transformed(GUIcoordX, GUIcoordY, currentLog, 2, 2, 0);
	}
}