/// @description Begin warp process

if (other.state >= 2 && other.pitwarp == false) 
{
    //Make sure Mario doesn't die because of warping.
    other.pitwarp = true;
    
    //Warp to another room
    alarm[0] = 30;
}

