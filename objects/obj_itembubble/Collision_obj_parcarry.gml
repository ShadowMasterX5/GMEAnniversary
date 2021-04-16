/// @description Collision with a thrown vegetable

//If the vegetable is not being held and it's moving down
if ((other.held == 0) && (other.vspeed >= 0)) {

    //Switch size
    if (ready == 0) {
    
        //Play 'Bumped' sound
        audio_play_sound(snd_bubble, 0, false);
    
        if (size == 1) {
        
            newsize = 0.75;
            ready = 1;
        }
        else if (size == 0.75) {
        
            newsize = 0.5;
            ready = 1;
        }
        else {
        
            //Play 'Pop' sound
            audio_play_sound(snd_pop, 0, false);
            
            //Create a coin if no item was selected
            if (sprout == cs_coin) {
            
                repeat(5) {
                
                    with (instance_create(x,y-12,obj_blockcoin2)) {
                    
                        hspeed = random_range(1,-1);
                        vspeed = random_range(-2,-6);
                    }
                }
            }
                
            //Otherwise, create a item.
            else if (sprout != cs_coin) {
            
                with (sprite_make_object(x-8+(sprite_get_xoffset(constant_get_sprite(sprout))),y-12,constant_get_sprite(sprout))) {
                
                    vspeed = -4;
                    permission = 1;
                }
            }
            
            //Create 'Pop' effect
            with (instance_create(x-16,y-16,obj_smoke)) sprite_index = spr_pop;
            
            //Destroy
            instance_destroy();
        }
    }
    
    //With veggie
    other.vspeed = -1.5;
    
    //Create a spinthump
    with (instance_create(other.x+8,other.y,obj_smoke)) 
        sprite_index = spr_spinthump;
}

