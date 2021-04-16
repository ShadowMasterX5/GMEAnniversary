/// @description Create smoke effect if in contact with lava

//If the shoe is in contact with lava
var lava = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+7,obj_lava,1,0)
if (lava) {
    
    if (movement.gravity == 0)
    && (sprite_index == spr_baburushoe) {
    
        alarm[1] = 2;
        with (instance_create(x-8+random(16),y+14,obj_smoke)) {
        
            sprite_index = spr_smoke_c;
            motion_set(90,random(1.5));
        }
    }
    else
        alarm[1] = 1;
}
else
    alarm[1] = 1;

