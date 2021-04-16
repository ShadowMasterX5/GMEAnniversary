/// @description Makes the fuzzy move around on paths.

//Check up in what direction is the fuzzy moving.
switch (direct) {

    //If the fuzzy is moving to the right.
    case (0): {
    
        if (collision_point(x+1,y+sprite_height/2,obj_pathparent,1,0))
            x++;
        else if (collision_point(x+1,y+(sprite_height/2)-1,obj_pathparent,1,0)) {
        
            x++;
            y--;
        }
        else if (collision_point(x+1,y+(sprite_height/2)+1,obj_pathparent,1,0)) {
        
            x++;
            y++;
        }
        else if (collision_point(x,y+(sprite_height/2)-1,obj_pathparent,1,0)) {
        
            y--;
            direct = 90;
        }
        else if (collision_point(x,y+(sprite_height/2)+1,obj_pathparent,1,0)) {
        
            y++;
            direct = 270;
        }
        else            
            direct = 180;
    } break;
    
    //Otherwise, if the fuzzy is moving upwards.
    case (90): {
    
        if (collision_point(x,y+(sprite_height/2)-1,obj_pathparent,1,0))     
            y--;
        else if (collision_point(x-1,y+(sprite_height/2)-1,obj_pathparent,1,0)) {
        
            x--;
            y--;
        }
        else if (collision_point(x+1,y+(sprite_height/2)-1,obj_pathparent,1,0)) {
        
            x++;
            y--;
        }
        else if (collision_point(x-1,y+sprite_height/2,obj_pathparent,1,0)) {
        
            x--;
            direct = 180;
        }
        else if (collision_point(x+1,y+sprite_height/2,obj_pathparent,1,0)) {
        
            x++;
            direct = 0;
        }
        else     
            direct = 270;
    } break;
    
    //Otherwise, if the fuzzy is moving to the left.
    case (180): {
    
        if (collision_point(x-1,y+sprite_height/2,obj_pathparent,1,0))         
            x--;
        else if (collision_point(x-1,y+(sprite_height/2)-1,obj_pathparent,1,0)) {
        
            x--;
            y--;
        }
        else if (collision_point(x-1,y+(sprite_height/2)+1,obj_pathparent,1,0)) {
        
            x--;
            y++;
        }
        else if (collision_point(x,y+(sprite_height/2)-1,obj_pathparent,1,0)) {
        
            y--;
            direct = 90;
        }
        else if (collision_point(x,y+(sprite_height/2)+1,obj_pathparent,1,0)) {
        
            y++;
            direct = 270;
        }
        else            
            direct = 0;
    } break;
    
    //Otherwise, if the fuzzy is moving downwards.
    case (270): {
    
        if (collision_point(x,y+(sprite_height/2)+1,obj_pathparent,1,0))    
            y++;
        else if (collision_point(x-1,y+(sprite_height/2)+1,obj_pathparent,1,0)) {
        
            x--;
            y++;
        }
        else if (collision_point(x+1,y+(sprite_height/2)+1,obj_pathparent,1,0)) {
        
            x++;
            y++;
        }
        else if (collision_point(x-1,y+sprite_height/2,obj_pathparent,1,0)) {
        
            x--;
            direct = 180;
        }
        else if (collision_point(x+1,y+sprite_height/2,obj_pathparent,1,0)) {
        
            x++;
            direct = 0;
        }
        else            
            direct = 90;
    } break;
}

