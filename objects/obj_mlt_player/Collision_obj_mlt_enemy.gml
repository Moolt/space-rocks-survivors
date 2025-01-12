global.mlt_current_lives -= 1;

if(global.mlt_current_lives > 0){ 
    return;
}

effect_create_above(ef_firework, x, y, 1, c_white);
API.play_sound(snd_mlt_explosion);

if(global.mlt_current_score == 0) {
	API.achievement_unlock("mlt_demo_loser");
}

alarm_set(0, 25);