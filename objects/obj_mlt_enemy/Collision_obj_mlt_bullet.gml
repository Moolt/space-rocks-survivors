enemy_lives -= 1;

instance_destroy(other);

if(enemy_lives > 0) { 
    image_xscale = 1.05;
    image_yscale = 1.05;
    alarm_set(0, 3);
    return;
}

mlt_grant_score(enemy_score);

effect_create_above(ef_explosion, x, y, 1, c_white);
API.play_sound(snd_mlt_explosion);

instance_destroy();