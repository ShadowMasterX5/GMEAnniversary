/// @description Create the appropiate point object based on player's height

//1-UP
if (obj_playerparent_clear.ystart+16 <= y+35) {

    limit = 27;
    with (instance_create(bbox_right+24,y+144,obj_score_flag)) 
        event_user(9);
}
    
//4000 points
else if (obj_playerparent_clear.ystart+16 <= y+80) {

    limit = 45;
    with (instance_create(bbox_right+24,y+144,obj_score_flag)) 
        event_user(7);
}
    
//1000 points
else if (obj_playerparent_clear.ystart+16 <= y+104) {

    limit = 91
    with (instance_create(bbox_right+24,y+144,obj_score_flag)) 
        event_user(5);
}
    
//400 points
else if (obj_playerparent_clear.ystart+16 <= y+144) {

    limit = 115;
    with (instance_create(bbox_right+24,y+144,obj_score_flag)) 
        event_user(3);
}
    
//100 points
else {

    limit = 144;
    with (instance_create(bbox_right+24,y+144,obj_score_flag)) 
        event_user(1);
}

