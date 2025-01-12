instance_create_layer(x, y, "Instances", obj_mlt_bullet_enemy, { direction: image_angle, speed: projectile_speed});
instance_create_layer(x, y, "Instances", obj_mlt_bullet_enemy, { direction: image_angle - 180, speed: projectile_speed});

alarm_set(4, shoot_frequency);