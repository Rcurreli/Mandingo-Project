/// @description Draw the dialogues

if ((isVisible == true) and (o_manager.currentCharacter != noone)) {
// GUI coords
	GUIcoordX = o_manager.currentCharacter.x;
	GUIcoordY = o_manager.currentCharacter.y;
	
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