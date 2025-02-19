global.mlt_pixel_font_title = fnt_mlt_title;
global.mlt_pixel_font_medium = fnt_mlt_medium;
global.mlt_pixel_font = fnt_mlt_default;

global.mlt_stage_duration_seconds = 30;

function mlt_init_globals() {
    global.mlt_is_selecting = false;
    global.mlt_current_score = 0;
    
    global.mlt_max_speed = 1.5;
    global.mlt_acceleration = 0.05;
    global.mlt_shoot_speed = 1;
    global.mlt_shot_amount = 1;
    global.mlt_shot_spread = 10;
    
    global.mlt_max_lives = 1;
    global.mlt_current_lives = global.mlt_max_lives;
    
    global.mlt_bonus_score = 0;
    global.mlt_score_multiplicator = 1;
    
    global.mlt_bullet_damage = 1;
}

function mlt_grant_score(_value) {
    global.mlt_current_score += round(_value * global.mlt_score_multiplicator + global.mlt_bonus_score);
}

function mlt_percent(_value, _percentage) {
    return _value / 100 * _percentage;
}

mlt_init_globals();