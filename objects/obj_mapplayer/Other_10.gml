/// @description Make the player display some arrows

//Check for a panel
temp = collision_point(x,y+8,obj_maplevel,0,0);

//Check for a path above
var mypath_u = collision_rectangle(x+8,y-4,x+8,y-4,obj_mappathparent,0,0);
if (mypath_u)
&& (mypath_u.visible) {

    //Draw secret path if it exists
    if (temp)
    && (temp.exitalt == 0)
        draw_sprite_ext(spr_mapmario_arrows_secret,anim,x+8,y-12,1,1,90,c_white,1);
    else
        draw_sprite_ext(spr_mapmario_arrows,anim,x+8,y-12,1,1,90,c_white,1);
}
        
//Check for a path below
var mypath_d = collision_rectangle(x+8,y+20,x+8,y+20,obj_mappathparent,0,0);
if (mypath_d)
&& (mypath_d.visible) {

    //Draw secret path if it exists
    if (temp)
    && (temp.exitalt == 1)
        draw_sprite_ext(spr_mapmario_arrows_secret,anim,x+8,y+20,1,1,270,c_white,1);
    else
        draw_sprite_ext(spr_mapmario_arrows,anim,x+8,y+20,1,1,270,c_white,1);
}
    
//Check for a path to the left
var mypath_l = collision_rectangle(x-8,y+8,x-8,y+8,obj_mappathparent,0,0);
if (mypath_l)
&& (mypath_l.visible) {

    //Draw secret path if it exists
    if (temp)
    && (temp.exitalt == 2)
        draw_sprite_ext(spr_mapmario_arrows_secret,anim,x-8,y+4,1,1,180,c_white,1);
    else
        draw_sprite_ext(spr_mapmario_arrows,anim,x-8,y+4,1,1,180,c_white,1);
}
        
//Check for a path to the right
var mypath_r = collision_rectangle(x+24,y+8,x+24,y+8,obj_mappathparent,0,0);
if (mypath_r)
&& (mypath_r.visible) {

    //Draw secret path if it exists
    if (temp)
    && (temp.exitalt == 3)
        draw_sprite_ext(spr_mapmario_arrows_secret,anim,x+24,y+4,1,1,0,c_white,1);
    else
        draw_sprite_ext(spr_mapmario_arrows,anim,x+24,y+4,1,1,0,c_white,1);
}

