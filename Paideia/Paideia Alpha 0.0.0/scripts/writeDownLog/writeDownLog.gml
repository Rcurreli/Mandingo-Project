// OUTDATED delete this once the FC Dialogue System is fully implemented
// Rename the arguments for readability
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var log = argument4;

// Draw the GUI background
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(x1, y1, x2, y2, false);

// Draw o_manager's log
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x1, y1, log);