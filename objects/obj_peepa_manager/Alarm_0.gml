/// @description Create peepas

for (var i=0; i<ghosts; i++) {

    //Create peepa
    var b = instance_create(x,y,obj_peepa_b);
    
    //Count
    count++;

    //Assign peepa to a id
    myghost[i] = b;
        b.parent = id;
}

