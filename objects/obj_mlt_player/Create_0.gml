function _hello_world(){
	show_debug_message("foo");
}

function _shoot() {
	with(obj_mlt_player) {
		instance_create_layer(x, y, "Instances", obj_mlt_bullet);
	}
}

shooting_timesource = time_source_create(time_source_game, 1, time_source_units_seconds, _shoot, [], -1);
time_source_start(shooting_timesource);