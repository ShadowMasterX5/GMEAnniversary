/// @description Create the enemy depending of the sprite.

switch (sprite_index) {

    //Cheep Cheep
    case (spr_cheepcheep): {
    
        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64,y,obj_cheepcheep);
    } break;
    
    //Boss Bass
    case (spr_bossbass): {
    
        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64,y,obj_bossbass);
    } break;
    
    //Porchu Puffer
    case (spr_porchupuffer): {
    
        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64,y,obj_porchupuffer);
    } break;
    
    //Lakitu
    case (spr_lakitu): {
    
        with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32, __view_get( e__VW.YView, 0 )+32, obj_lakitu)) {
        
            xmin = other.xmin;
            xmax = other.xmax;
        }
    } break;
    
    //Red Lakitu
    case (spr_lakitu_red): {
    
        with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32, __view_get( e__VW.YView, 0 )+32, obj_lakitu_red)) {
        
            xmin = other.xmin;
            xmax = other.xmax;
        }
    } break;
    
    //Magikoopa
    case (spr_magikoopa): {
    
        with (instance_create(-1000,-1000,obj_magikoopa)) {
        
            xmin = other.xmin;
            xmax = other.xmax;
        }
    } break;
}

//Destroy
instance_destroy();

