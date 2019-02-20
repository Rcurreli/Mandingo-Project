/// @description Draw talk GUI

// Friend encounter GUI values
var xOffset = 5 * o_manager.base_offset;
var yOffset = o_manager.base_offset;
var textOffset = o_manager.base_offset;

// Draw the log
writeDownLog(xOffset, yOffset, (room_width / 2 + xOffset),
	(3 * yOffset), talkLog);

// Draw additional text
if((talkCurrent - 1) == 0) {
	draw_text(xOffset, (yOffset + textOffset),
		"Salute: " + string(o_player.current_health) + " / "
		+ string(o_player.max_health)
	);
}