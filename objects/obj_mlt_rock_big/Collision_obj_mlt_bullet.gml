if(enemy_lives == 1) {
    instance_create_layer(x, y, "Instances", obj_mlt_rock_small);
    instance_create_layer(x, y, "Instances", obj_mlt_rock_small);
}

event_inherited();