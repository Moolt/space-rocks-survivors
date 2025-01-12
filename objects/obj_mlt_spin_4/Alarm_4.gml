// Inherit the parent event
event_inherited();

instance_create_layer(x, y, "Instances", obj_mlt_bullet_enemy, { direction: image_angle - 90, speed: projectile_speed});
instance_create_layer(x, y, "Instances", obj_mlt_bullet_enemy, { direction: image_angle + 90, speed: projectile_speed});