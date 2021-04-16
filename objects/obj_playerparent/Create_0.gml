/// @description Super Player Parent

//Enable / Disable gravity
enable_gravity = true;

//Movement variables
xspeed = 0;
yspeed = 0;
ygrav = 0;
catclimbing = 0;

//Handle the player current state.
//0:    Idle
//1:    Walk
//2:    Jump / Swim
//3:    Climb
state = 0;
delay = 0;

//Handle the player facing direction.
//1:    Right
//-1:   Left
xscale = 1;

//Handle the player direction when stuck on a solid.
//1:    Right
//-1:   Left
direct = 1;
direct2 = 0;

//Make the player able to hold various items.
//0:    Can hold
//1:    SMB2 style holding.
//2:    SMW/SMB3 style holding.
//3:    SMA4 Boomerang
holding = 0;

//Handle the player jump.
//0:    Can jump
//1:    Can stop in mid-air
//2:    Cannot stop in mid-air
jumping = 0;

//Allow the player to spin-jump.
stompstyle = false;

//Plays a sound when the player is climbing up a beanstalk.
noise = 0;

//Makes the player run faster
run = 0;

//Makes the player change it's direction.
skidnow = 0;
turning = 0;

//Makes the player swim when on contact with a water surface.
swimming = 0;

//Makes the player able to buttslide down slopes.
sliding = 0;

//Makes the player able to fly high.
flying = false;
flyfix = 0;

//Makes the player able to crouch down.
crouch = 0;

//Handles the player net smacking
netsmack = 0;

//Makes the player able or not able to move.
move = false;

//Angle of the player after wall run
angle = 0;

//Handle P-Meter
pmeter = 0;
pmeterready = false;

//Makes the player able to kick held items.
kicking = false;

//Is the player gravity disabled?
disablegrav = 0;

//Makes the player invulnerable to all hazards.
invulnerable = false;

//Disables the player controls completely.
disablecontrol = false;

//Makes the player do a somersault jump when invulnerable
somersault = false;

//Checks if the player is stuck on a solid surface.
inwall = false;

//Displays the player shooting pose when firing a projectile
firing = 0;

//Is Raccoon / Tanooki the player wiggling his tail?
wiggle = 0;

//Handles the player combos and gives extra lives.
hitcombo = 0;

//Change direction of the projectiles when spinning
dir = 1;

//Carrot / Bee powerup flight variables
beefly = 0;
floatnow = 0;
isfloating = 0;

//Frog / Penguin powerup swimming variables
swimtype = 0;

//Prevents the player from moving if stunned
stuntime = 0;

//Prevents the player from moving if frozen
freezetime = 0;

//Makes the player shake when stunned
shake = 0;

//Mutes the 'Bump' sound when either the player is climbing or swimming with the frog or penguin powerups
noisy = 0;

//Allows the player to end sliding manually when releasing the 'Down' key.
holddown = false;

//Boost player's fall
boost = 0;

//Player colour
isflashing = 0;

//If the player is warping from a pit.
pitwarp = false;

//Initialize important alarms
alarm[3] = 1; //This one is found on player skins
alarm[5] = 1;
alarm[8] = 1; 
alarm[10] = 1; //This one is found on player skins

//Create markers
instance_create(0,0,obj_marker_head);
instance_create(0,0,obj_marker_bottom);

//Create dash attack
if (instance_number(obj_dashkill) == 0)
    instance_create(0,0,obj_dashkill);

