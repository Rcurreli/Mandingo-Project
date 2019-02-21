/// @description Draw talk GUI

// Friend encounter GUI values
var xOffset = 5 * o_manager.baseOffset;
var yOffset = o_manager.baseOffset;
var textOffset = o_manager.baseOffset;

if(room == rm_friendEncounter) {
// Draw the log
	writeDownLog(xOffset, yOffset, (room_width / 2 + xOffset),
		(3 * yOffset), talkLog);

// Draw additional text
	if((talkCurrent - 1) == 0) {
		draw_text(xOffset, (yOffset + textOffset),
			"Salute: " + string(o_childAbstract.currentHealth) + " / "
			+ string(o_childAbstract.maxHealth)
		);
	}
}