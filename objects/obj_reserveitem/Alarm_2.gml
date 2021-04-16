/// @description Item check

switch (sprite_index) {

    //Set 'Power Up' sequence
    case (spr_fireflower):
    case (spr_iceflower):
    case (spr_superflower):
    case (spr_voltshroom): {
    
        sequence = 2; 
        break;
    }
        
    //Set 'Transform' sequence
    default: 
        sequence = 4; break;
}

