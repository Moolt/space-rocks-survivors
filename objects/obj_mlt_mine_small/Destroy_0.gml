for(var _i = 0; _i < projectiles_amount; _i++) {
    instance_create_layer(x, y, "Instances", obj_mlt_bullet_enemy, { direction: (360/projectiles_amount) * _i, speed: projectile_speed});
}