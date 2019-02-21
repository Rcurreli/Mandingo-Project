// Rename the arguments for readability
var entity = argument0;

show_debug_message(entity.currentHealth);
if(entity.currentHealth <= 0) {
	entity.isAlive = false;
}