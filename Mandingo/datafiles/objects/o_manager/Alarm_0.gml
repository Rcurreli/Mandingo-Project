/// @description Insert description here
// You can write your code in this editor



if ( vite > 0 ) {
	instance_create_layer(o_player.x,o_player.y-30,"oggetti",o_ball);
}

else{
	instance_create_layer(room_width/2, room_height/2, "GUI", o_gameover);
}