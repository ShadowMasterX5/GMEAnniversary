/// @description Stackable mushroom logic

//Check for the player above
var player = collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0);

//If the player exist and control is pressed
if (instance_number(obj_puller) == 0)
&& (canpull())
&& (player)
&& (player.bbox_bottom < yprevious+5) {

    //Force player hold
    with (obj_playerparent) {
    
        holding = 1;
        visible = 0;
    }
    
    //Create puller
    instance_create(player.x,player.y,obj_puller);
    
    //Finish pull
    alarm[0] = 10;    
}

