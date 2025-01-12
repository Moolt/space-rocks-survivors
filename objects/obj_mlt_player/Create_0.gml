/*
 * Buffs:
 * Hitbox größer kleiner
 * ++ Schneller schießen
 * kritischer treffen chance
 * kritischer treffer multiplikator
 * ++schaden
 * ++ geschwindigkeit bewegen
 * ++ geschwindigkeit beschleunigen
 * homing
 * chance ausweichen
 * ++mehrfach schuss
 * projektil größe
 * */

v_speed = 0;
h_speed = 0;

global.mlt_current_lives = global.mlt_max_lives;

function _shoot() {
    API.play_sound(snd_mlt_bullet);
    
	with(obj_mlt_player) {
        var max_angle = (global.mlt_shot_amount - 1) * global.mlt_shot_spread;
        
        for(var _i = 0; _i < global.mlt_shot_amount; _i++) {
            instance_create_layer(x, y, "Instances", obj_mlt_bullet, { direction: image_angle - max_angle / 2 + _i * global.mlt_shot_spread});
        }
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