/// @description The parent object for all subcon enemy objects

//Hereby variables from obj_deactenemyparent
event_inherited();

//A collision object for the player to ride
mytop = instance_create(x-8,y,obj_semisolid);

//Is this enemy heavy?
//0: No
//1: Yes
//2: Yes, but unpullable
isheavy = 0;

