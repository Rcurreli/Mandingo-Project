// Rename the arguments for readability
viewToActivate = argument0;

for (i = 0; i < 4; i++) {
// Activate this viewport
	if(i == viewToActivate) {
		view_visible[i] = true;
	}
// Deactivate all the other viewports
	else {
		view_visible[i] = false;
	}
}