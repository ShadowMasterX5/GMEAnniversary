/// @description Create effect if above lava

//If the shoe is in contact with lava
var lava = collision_rectangle(bbox_left,bbox_bottom+6,bbox_right,bbox_bottom+7,obj_lava,0,0)
if (lava) {
    
    if (sprite_index == spr_baburushoe) {
    
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

