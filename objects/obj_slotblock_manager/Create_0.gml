/// @description Slot Blocks Manager

//Spawn the blocks
for (var i=0; i<4; i++) {

    //Create a block
    var b = instance_create(80+(64*i),96,obj_slotblock);
    
    //Assign the block to a id
    myblock[i] = b;
        b.numb = i+1;
        b.parent = id;
}

//Check if all 4 block are hit
ready = 0;

//Check the blocks
check = 0;

//Number of lives to award
award = 0;

