/// @description Handle alpha of lightning

//If fading in...
if (fade) {

    alpha += 0.2;
    if (alpha > 1)
        fade = false;
}

//Otherwise, if fading out...
else {

    alpha -= 0.2;
    if (alpha < 0)
        instance_destroy();
}

