/// @description Deselect this character

if(target != noone) {
	target = noone;
	instance_destroy(o_choice_abstract);
}

view_visible[0] = false;
view_visible[1] = true;