/// @description Handle alpha of lightning

//If fading in...
if (fade == 1) {

    alpha += 0.4;
    if (alpha > 1)
        fade = false;
}

//Otherwise, if fading out...
else if (fade == 0) {

    alpha -= 0.4;
    if (alpha < 0)
        instance_destroy();
}

