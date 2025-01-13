instance_create_layer(x, y, "Instances", obj_mlt_bullet_enemy, { direction: image_angle, speed: projectile_speed});
API.play_sound(snd_mlt_enemy_shot);

alarm_set(4, shoot_frequency);