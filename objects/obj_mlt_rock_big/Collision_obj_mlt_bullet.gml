obj_demo_game.points += 50;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
API.play_sound(snd_mlt_explosion);

direction = random(360);

if (sprite_index == spr_mlt_rock_big) {
	sprite_index = spr_mlt_rock_small;
	instance_copy(true);
}
else if (instance_number(obj_mlt_rock_big) < 12) {
	sprite_index = spr_mlt_rock_big;
	x = -100;
}
else {
	instance_destroy();
}