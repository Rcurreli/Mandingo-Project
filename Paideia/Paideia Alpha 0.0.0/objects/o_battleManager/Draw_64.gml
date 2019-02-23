/// @description Draw the battle GUI

// GUI values
var textOffset = o_manager.baseOffset;
var xOffset = 2 * o_manager.baseOffset;
var yOffset = 6 * o_manager.baseOffset;

// Draw the log
if(room == rm_battleAbstract) {
	writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height, battleLog);
}