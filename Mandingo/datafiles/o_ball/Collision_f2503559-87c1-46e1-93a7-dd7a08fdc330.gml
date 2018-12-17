/// @description Insert description here
// You can write your code in this editor





bonus_ball = instance_create_layer(x,y+20,"oggetti",o_ball);
bonus_ball.direction = 90; 
speed = 5;

bonus_ball = instance_create_layer(x,y-20,"oggetti",o_ball);
bonus_ball.direction = 135;  
speed = 5;

instance_destroy(o_power_up);