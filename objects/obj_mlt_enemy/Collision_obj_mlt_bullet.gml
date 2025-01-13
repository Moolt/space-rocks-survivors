if(immortal) {
    return;
}

enemy_lives = max(0, enemy_lives - global.mlt_bullet_damage);

instance_destroy(other);

if(enemy_lives > 0) {
    API.play_sound(snd_mlt_enemy_hit);
    image_xscale = 1.05;
    image_yscale = 1.05;
    alarm_set(0, 3);
    return;
}

mlt_grant_score(enemy_score);

effect_create_above(ef_explosion, x, y, 1, c_white);

if(death_sound != undefined) {
    API.play_sound(death_sound);
}
else{
    var snd = irandom(2);
    
    if(snd == 0) {
        API.play_sound(snd_mlt_explosion_1);
    } else if(snd == 1) {
        API.play_sound(snd_mlt_explosion_2);
    } else if(snd == 2) {
        API.play_sound(snd_mlt_explosion_3);
    }
}

instance_destroy();