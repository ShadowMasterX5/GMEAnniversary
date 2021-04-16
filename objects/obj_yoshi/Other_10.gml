/// @description Spit out an item

//Play 'Spit' sound
audio_play_sound(snd_yoshi_spit, 0, false);

//Spit out the item
if (obj_playerparent.crouch) 
|| (obj_playerparent.sliding) {

    //If the item held is a koopa shell, turn into a kicked koopa shell
    if (mouthholder == obj_shell) {
    
        if (colour == 1)
        || (mouthsprite == spr_koopa_black)
        || (mouthsprite == spr_shell_red_down)
            mouthholder = obj_yoshi_fire;
    }

    //Lock it
    locked = 2;
    
    //If there's fire inside yoshi's mouth
    if (mouthholder == obj_yoshi_fire) {
    
        //Play 'Flames' sound
        audio_play_sound(snd_flames, 0, false);
        
        //Make yoshi fire
        instance_create(x+(10*obj_playerparent.xscale),y-12,obj_yoshi_fire);
        with (instance_create(x+(10*obj_playerparent.xscale),y-12,obj_yoshi_fire)) 
            vspeed = 1;
        with (instance_create(x+(10*obj_playerparent.xscale),y-12,obj_yoshi_fire)) 
            vspeed = -1;         
    }
    
    //Otherwise, spit a item
    else {

        //Create up an item
        with (instance_create(x+(10*obj_playerparent.xscale),y-12,mouthholder)) {
        
            //Use the correct sprite
            sprite_index = other.mouthsprite;
            
            //If the eaten item is a throwable brick.
            if (sprite_index == spr_bluebrick_th) 
            || (sprite_index == spr_redbrick_th) 
            || (sprite_index == spr_graybrick_th) {
                
                //Set the animation speed
                image_speed = 0.5;
            }
            
            //Set the horizontal speed
            hspeed = 0.5*obj_playerparent.xscale;
        }
    }
}
else {

    //If the item held is a koopa shell, turn into a kicked koopa shell
    if (mouthholder == obj_shell) {
    
        if (colour == 1)
        || (mouthsprite == spr_koopa_black)
        || (mouthsprite == spr_shell_red_down)
            mouthholder = obj_yoshi_fire;
        else
            mouthholder = obj_shell_kick;
    }

    //Lock it
    locked = 1;
    
    //If there's fire inside yoshi's mouth
    if (mouthholder == obj_yoshi_fire) {
    
        //Play 'Flames' sound
        audio_play_sound(snd_flames, 0, false);
        
        //Make yoshi fire
        instance_create(x+(10*obj_playerparent.xscale),y-16,obj_yoshi_fire);
        with (instance_create(x+(10*obj_playerparent.xscale),y-16,obj_yoshi_fire)) 
            vspeed = 1;
        with (instance_create(x+(10*obj_playerparent.xscale),y-16,obj_yoshi_fire)) 
            vspeed = -1;         
    }
    
    //Otherwise, if there's a turnip inside yoshi's mouth
    else if (mouthholder == obj_turnip) {
    
        //Create a turnip
        with (instance_create(x+(10*obj_playerparent.xscale),y-16,obj_turnip)) {
        
            //Use the correct sprite
            sprite_index = other.mouthsprite;
        
            //Set the motion
            hspeed = 3*obj_playerparent.xscale;
            vspeed = 0.1;
            
            //Set gravity
            gravity = 0.2;
            
            //Do not held the item
            held = false;
        }
    }
    
    else {
    
        //Create up an item
        with (instance_create(x+(10*obj_playerparent.xscale),y-16,mouthholder)) {
        
            //Use the correct sprite
            sprite_index = other.mouthsprite;
            
            //Set the correct direction
            dir = other.image_xscale;
            
            //If the eaten item is a throwable brick
            if (sprite_index == spr_bluebrick_th) 
            || (sprite_index == spr_redbrick_th) 
            || (sprite_index == spr_graybrick_th) {
                
                //Set the horizontal speed.
                hspeed = 2.7*obj_playerparent.xscale;
                
                //Set the animation speed
                image_speed = 0.5;
                
                //Get thrown
                ready = 1;
                
                //Do not destroy
                alarm[0] = -1;
                alarm[1] = -1;
                
                //If the object is in contact with a solid.
                if (place_meeting(x,y,obj_solid))
                    event_user(0);
            }
            
            //Otherwise, if the eaten item is a ice block
            else if (sprite_index == spr_iceblock) {
            
                //Set the horizontal speed
                hspeed = 2.7*obj_playerparent.xscale;
                
                //Get thrown
                ready = 1;
                
                //Do not destroy
                alarm[0] = -1;
                alarm[1] = -1;
                
                //If the object is in contact with a solid.
                if (place_meeting(x,y,obj_solid))
                    event_user(0);
            }
            
            //Otherwise if the eaten item is a shell
            else if (sprite_index == spr_shell_down) 
            || (sprite_index == spr_shell_blue_down) 
            || (sprite_index == spr_shell_yellow_down) {
                            
                //Set the horizontal speed
                prevhspeed = 2.7*obj_playerparent.xscale;
                hspeed = 2.7*obj_playerparent.xscale;
                
                //Get thrown
                ready = 1;
                
                //If the object is in contact with a solid.
                if (place_meeting(x,y,obj_solid))
                    event_user(0);            
            }
            
            //Otherwise, spit a regular item
            else {
    
                //If the eaten item is not overlapping a solid.
                if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
                
                    //Set the motion when swimming.
                    if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0)) {
                    
                        if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))
                            hspeed = obj_playerparent.xspeed+0.75*obj_playerparent.xscale;
                        else
                            hspeed = 1*obj_playerparent.xscale;                
                    }
                    
                    //Otherwise, set the motion when NOT swimming.
                    else {
                    
                        if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))
                            hspeed = obj_playerparent.xspeed+1.5*obj_playerparent.xscale;
                        else
                            hspeed = 2*obj_playerparent.xscale;                
                    }
                }
                
                //Make the item get not stuck on a solid.
                else
                    inwall = true;
            }
        }
    }
}

//Reset mouth item
mouthholder = noone;

//Reset item sprite
mouthsprite = noone;

//Licking
licking = 1;

//Stop licking
alarm[2] = 5;

//Lick animation
anim = 0;

