/// @description Choose this character

// Call the parent
event_inherited();

// Specific actions
instance_create_layer(self.x, self.y, "Logic", o_father_helpChildWithHomeworks);