/// @description Paragoomba logic (End) + Animation
/// @param End

//Inherit end step
event_inherited();

//Animate the wings
if (jumping > 0) {

    if (jumping > 3)
        anim += 0.3;
    else
        anim += 0.15;
}
else
    anim = 0;

