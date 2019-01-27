/// @description Select this character

// GUI variables
baseOffset = sprite_height / 2;
xBaseCoord = x - baseOffset;
yBaseCoord = y - baseOffset;

// Change the viewport
view_visible[0] = true;
view_visible[1] = false;

// Create the choices
instance_create_layer((xBaseCoord - (2 * baseOffset)),
	(yBaseCoord - (baseOffset / 2)), "Logic", o_choice_work);
instance_create_layer((xBaseCoord + (2 * baseOffset)),
	(yBaseCoord - (baseOffset / 2)), "Logic", o_choice_play);
instance_create_layer(xBaseCoord, yBaseCoord - (2 * baseOffset),
	"Logic", o_choice_home);
instance_create_layer(xBaseCoord - (3 * baseOffset / 2), yBaseCoord + baseOffset,
	"Logic", o_choice_helpA);
instance_create_layer(xBaseCoord + (3 * baseOffset / 2), yBaseCoord + baseOffset,
	"Logic", o_choice_helpB);