effect_create_above(ef_firework, x, y, 1, c_white);
API.play_sound(snd_mlt_explosion);
instance_destroy();

if(obj_mlt_game.points == 0) {
	API.achievement_unlock("sr_demo_loser");
}

obj_mlt_game.alarm[0] = 120;