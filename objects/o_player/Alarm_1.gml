/// @description Respawn

room_goto(global.respawn_room);
global.previous_room=global.respawn_room;

//Reset Stats

hp=hpMax;

invi=0;
move=1;
dead=0;
visible=1;

ds_list_clear(global.list_used);
