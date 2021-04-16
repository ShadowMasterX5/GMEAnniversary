/// @description Multidirection Accordion Platform

//Expand platform
alarm[0] = 120;

//Create platforms
myblock[1] = instance_create(x,y,obj_expandplatblock);
    myblock[1].depth = 2;
myblock[2] = instance_create(x,y,obj_expandplatblock);
    myblock[2].depth = 1;
myblock[3] = instance_create(x,y,obj_expandplatblock);
    myblock[3].depth = 1;
myblock[4] = instance_create(x,y,obj_expandplatblock);
    myblock[4].depth = 2;

