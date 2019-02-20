/// @description Draw the battle GUI

// GUI values
var textOffset = o_manager.base_offset;
var xOffset = 2 * o_manager.base_offset;
var yOffset = 6 * o_manager.base_offset;

// Draw the log
writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height,
	battleLog);