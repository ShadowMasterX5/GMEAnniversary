/// @description Pulled vegetable logic

//Destroy if the player does not exist
if (!instance_exists(obj_playerparent)) {

    instance_destroy();
    exit;
}

//If the veggie is almost pulled
if (ready == 2) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //With the player
        with (obj_playerparent) {
        
            visible = 1;
            holding = 0;
            disablecontrol = false
        }
        
        //Destroy puller
        with (obj_puller) instance_destroy();
    }

    //If the vegetable is a bomb
    if (myveggie == obj_turnip_bomb) 
        with (instance_create(obj_playerparent.x,obj_playerparent.y-5,obj_turnip_bomb)) aa = other.aa;
        
    //Otherwise, if the vegetable is a basket sphere
    else if (myveggie == obj_basket_up) {
    
        //Create a held basket sphere
        with (instance_create(obj_playerparent.x,obj_playerparent.y-5,obj_basket_up)) {
        
            image_speed = other.image_speed;
            image_index = other.image_index;
        }
    }
    
    //Otherwise, if the vegetable is a pullable barrel
    else if (myveggie == obj_barrel_up) {

        //If this barrel is explosive, create explosive variant
        if (sprite_index == spr_barrel_tnt_up)        
            with (instance_create(obj_playerparent.x, obj_playerparent.y-5, obj_barrel_up)) sprite_index = spr_barrel_tnt_up;

        //Otherwise
        else
            instance_create(obj_playerparent.x, obj_playerparent.y-5, obj_barrel_up);
    }
    
    //Otherwise, if the vegetable is a pullable mushroom
    else if (myveggie == obj_mushroom)    
        instance_create(obj_playerparent.x,obj_playerparent.y,obj_mushroom);
        
    //Otherwise, if the vegetable is a pullable 1up mushroom
    else if (myveggie == obj_1up)   
        instance_create(obj_playerparent.x,obj_playerparent.y,obj_1up);
        
    //Otherwise, if the vegetable is a crystal ball
    else if (myveggie == obj_crystal_up) {
    
        //If the crystal is a blue one, open red hawkmouth
        if (sprite_index == spr_crystal) {
    
            //Open Hawkmouth's mouth
            with (obj_hawkmouth) {
            
                //Make sure this is the red one
                if (sprite_index == spr_hawkmouth) {
                
                    //Do not animate
                    image_speed = 0;
                    image_index = 1;
                    
                    //Prepare to open the mouth
                    ready = 1;
                    
                    //Play fanfare
                    alarm[0] = 4;
                    
                    //Open hawkmouth mouth.
                    alarm[1] = 120;
                }
            }
        }
        
        //Otherwise, if the crystal is a red one, open blue hawkmouth
        else if (sprite_index == spr_crystal_red) {
    
            //Open Hawkmouth's mouth
            with (obj_hawkmouth) {
            
                //Make sure this is the red one
                if (sprite_index == spr_hawkmouth_secret) {
                
                    //Do not animate
                    image_speed = 0;
                    image_index = 1;
                    
                    //Prepare to open the mouth
                    ready = 1;
                    
                    //Play fanfare
                    alarm[0] = 4;
                    
                    //Open hawkmouth mouth.
                    alarm[1] = 120;
                }
            }
        }       
    }
        
    //Otherwise, pull a veggie
    else {
    
        //If the vegetable is a enemy
        if (enemy) {
        
            with (instance_create(obj_playerparent.x,obj_playerparent.y+11,myveggie)) {
            
                //Hereby same sprite and frame
                sprite_index = other.sprite_index;
                image_xscale = other.xscale;
                
                //Hereby return enemy
                turnback = other.turnback;
                
                //Hereby timers
                aa = other.aa;                
            }
        }
        
        //Otherwise, pull a normal vegetable
        else
            instance_create(obj_playerparent.x,obj_playerparent.y+11,myveggie);
    }
    
    //Destroy
    instance_destroy();
}

//Set the y position of the turnip
if (((bbox_bottom < obj_playerparent.bbox_top+14) && (global.powerup == cs_small))
|| ((bbox_bottom < obj_playerparent.bbox_top+20) && (global.powerup >= cs_big)))
&& (ready == 0) {

    //Set the plucking sprite
    with (obj_puller) {
    
        sprite_index = scr_mario_duck();
    }

    //Pull out
    alarm[4] = 7;
    ready = 1;
    
    //Stop vertical movement
    vspeed = 0;
    
    //If the player is not small
    if (global.powerup >= cs_big)
        y = obj_playerparent.bbox_top-2;
    
    //Otherwise, if the player is small
    else if (global.powerup == cs_small)
        y = obj_playerparent.bbox_top-6;
}

//If the player does not exist...
if (!instance_exists(obj_playerparent))
    instance_destroy();

