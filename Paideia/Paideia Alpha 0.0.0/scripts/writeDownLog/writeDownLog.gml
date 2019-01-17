// Rename the arguments for readability
x2 = argument0;
y2 = argument1;

// Draw the GUI background
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(o_manager.x_offset, o_manager.y_offset, x2, y2, false);

// Draw o_manager's log
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(o_manager.x_offset, o_manager.y_offset, o_manager.log);