/// @description Spawn microgoombas

if (flying > 1)
&& (flying < 3) {

    //Create microgoombas
    with (instance_create(x,y+8,obj_goomba_micro)) {
    
        hspeed = 0.5*sign(other.hspeed);
    }
    
    //Repeat
    alarm[2] = 48;
}

