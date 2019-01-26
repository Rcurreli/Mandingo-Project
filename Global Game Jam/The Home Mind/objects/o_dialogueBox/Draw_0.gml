/// @description Draw the dialogues

if (isVisible == true) {
	// Draw the background
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	// Draw the text
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_text_transformed(0, 0, currentLog, 2, 2, 0);
}