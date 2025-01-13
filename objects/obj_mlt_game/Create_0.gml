#macro MLT_GAME_WIDTH 1280
#macro MLT_GAME_HEIGHT 720

stage = 1;

stage_time_source = time_source_create(time_source_game, 1, time_source_units_seconds, function()  {
    seconds_until_next_stage -= 1;
    
    if(seconds_until_next_stage == 0) {
        stage++;
        room_goto(room_mlt_space_rocks_upgrades);
        time_source_reset(stage_time_source);
    }
}, [], global.mlt_stage_duration_seconds);

//music = API.play_music(snd_mlt_music, 1, true);
displayed_score = 0;