global.mlt_current_lives -= 1;
global.mlt_current_lives = max(0, global.mlt_current_lives);

if(global.mlt_current_lives > 0) {
    return;
}

effect_create_above(ef_firework, x, y, 1, c_white);
API.play_sound(snd_mlt_explosion);

if(global.mlt_current_score == 0) {
	API.achievement_unlock("mlt_demo_loser");
}

instance_destroy(obj_mlt_game);
room_goto(room_mlt_space_rocks_game_over);