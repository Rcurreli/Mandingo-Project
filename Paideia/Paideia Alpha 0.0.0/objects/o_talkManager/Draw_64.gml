/// @description Draw talk GUI

// Friend encounter GUI values
var xOffset = 5 * o_manager.baseOffset;
var yOffset = o_manager.baseOffset;
var textOffset = o_manager.baseOffset;

if(room == rm_roomAbstract) {
// Draw the log
	writeDownLog(xOffset, yOffset, (room_width / 2 + xOffset),
		(3 * yOffset), talkLog);
}