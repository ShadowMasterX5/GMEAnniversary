sprout[0] = cs_fire;
for (var i=1; i<17; i++) {

    with (instance_create(x+(i*48), y, obj_viewblock)) {
    
        sprout[0] = cs_fire+i;
    }
}
