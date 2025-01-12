/*
 * Buffs:
 * Hitbox größer kleiner
 * Schneller schießen
 * kritischer treffen chance
 * kritischer treffer multiplikator
 * schaden
 * ++ geschwindigkeit bewegen
 * ++ geschwindigkeit beschleunigen
 * homing
 * chance ausweichen
 * mehrfach schuss
 * projektil größe
 * accelleration
 * */

v_speed = 0;
h_speed = 0;

function _shoot() {
	with(obj_mlt_player) {
		instance_create_layer(x, y, "Instances", obj_mlt_bullet);
	}
}

shooting_timesource = time_source_create(time_source_game, 1, time_source_units_seconds, _shoot, [], -1);

function shoot_start() {
    time_source_start(shooting_timesource);
}

function shoot_stop() {
    time_source_stop(shooting_timesource);
}

function shoot_update() {
    time_source_reconfigure(shooting_timesource, global.mlt_shoot_speed, time_source_units_seconds, _shoot, [], -1);
}

shoot_update();
shoot_start();