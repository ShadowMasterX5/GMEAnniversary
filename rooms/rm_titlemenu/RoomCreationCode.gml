/// @description Set different menu based on health mode variable

if (global.healthmode == 0)
    instance_create(192, 108, obj_titlemenu);
else
    instance_create(192, 108, obj_titlemenu_health);