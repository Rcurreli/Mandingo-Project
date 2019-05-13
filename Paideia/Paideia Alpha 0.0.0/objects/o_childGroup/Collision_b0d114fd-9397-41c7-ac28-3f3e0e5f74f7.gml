/// @description Insert description here
// You can write your code in this editor

if(room == rm_corridorsAbstract){
	global.roomcamefrom = room;
	room_goto(rm_avventura);
}

else if(room == rm_avventura){
	global.roomcamefrom = room;
	room_goto(rm_corridorsAbstract);
}

else if(room == rm_avventura2){
	global.roomcamefrom = room;
	room_goto(rm_avventura);
}
else if(room == rm_avventura3){
	global.roomcamefrom = room;
	room_goto(rm_avventura);
}
