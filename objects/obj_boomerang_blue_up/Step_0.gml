/// @description Blue boomerang logic

//If the object is being held.
if (held) {

    //If the control key is being pressed and the vegetable can be thrown.
    if (keyboard_check_pressed(global.controlkey)) {
    
        //If the player does exist.
        if (instance_exists(obj_playerparent)) {
        
            //Play 'Throw' sound
            audio_play_sound(snd_throw, 0, false);
            
            //With the player
            with (obj_playerparent) {
            
                //Stop holding
                holding = 0;
                
                //Toss
                event_user(3);
            }
            
            //Create a thrown boomerang
            with (instance_create(x+8,y,obj_boomerang)) {
            
                canpick = 1;
                hspeed = 2*sign(obj_playerparent.xscale);
            }
            
            //Destroy
            instance_destroy();
        }
    }
}

