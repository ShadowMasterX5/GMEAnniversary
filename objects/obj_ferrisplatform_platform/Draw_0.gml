/// @description Draw platform and chains

//Chains
draw_sprite(spr_ferrisplatform_segment,0,round(xstart)+(platform.x-xstart)*(2/3),(ystart+(platform.y+8-ystart)*(2/3)));
draw_sprite(spr_ferrisplatform_segment,0,round(xstart)+(platform.x-xstart)*(1/3),(ystart+(platform.y+8-ystart)*(1/3)));
draw_sprite(spr_ferrisplatform_segment,0,round(x),y+8);

//Platform
draw_sprite(sprite_index,-1,round(x),round(y));

