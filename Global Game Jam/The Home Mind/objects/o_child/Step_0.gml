/// @description Move and rotate

if ( x == o_child_playVideogames.x && y == o_child_playVideogames.y){
    sprite_index = s_child_idle;
    image_index = 0;
}

if(direction == 270){
    sprite_index = s_child_front;
}



if (direction == 90){
    sprite_index = s_child_back;
}