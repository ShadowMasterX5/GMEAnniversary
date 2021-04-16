/// @description Move towards the player

//If the koopa can move
if (ready > 0) {

    //Inherit event
    event_inherited();

    //Set walking sprite
    if (sprite_index == spr_beachkoopa)
        sprite_index = spr_beachkoopa_walk;
}

