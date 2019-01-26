/// @description Select this character

o_manager.target = self;
view_visible[0] = true;
view_visible[1] = false;

// GUI variables
baseOffset = sprite_height / 2;
xBaseCoord = x - baseOffset;
yBaseCoord = y - baseOffset;

instance_create_layer((xBaseCoord - (2 * baseOffset)),
	(yBaseCoord - (baseOffset / 2)), "Logic", workChoice);
instance_create_layer((xBaseCoord + (2 * baseOffset)),
	(yBaseCoord - (baseOffset / 2)), "Logic", playChoice);
instance_create_layer(xBaseCoord, yBaseCoord - (2 * baseOffset), "Logic", homeChoice);
instance_create_layer(xBaseCoord - (3 * baseOffset / 2), yBaseCoord + baseOffset,
	"Logic", helpAChoice);
instance_create_layer(xBaseCoord + (3 * baseOffset / 2), yBaseCoord + baseOffset,
	"Logic", helpBChoice);