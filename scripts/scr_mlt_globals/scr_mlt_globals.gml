global.mlt_pixel_font_title = font_add("m5x7.ttf", 96, false, false, 32, 128);
global.mlt_pixel_font_medium = font_add("m5x7.ttf", 48, false, false, 32, 128);
global.mlt_pixel_font = font_add("m5x7.ttf", 32, false, false, 32, 128);

function init_globals() {
    global.mlt_is_selecting = false;
    global.mlt_current_score = 0;
    
    global.mlt_max_speed = 1.5;
    global.mlt_acceleration = 0.05;
    global.mlt_shoot_speed = 1;
    global.mlt_shot_amount = 1;
    global.mlt_shot_spread = 10;
    
    global.mlt_max_lives = 10;
    global.mlt_current_lives = global.mlt_max_lives;
    
    global.mlt_bonus_score = 0;
    global.mlt_score_multiplicator = 1;
    
    global.mlt_bullet_damage = 1;
}

function mlt_grant_score(_value) {
    global.mlt_current_score += _value * global.mlt_score_multiplicator + global.mlt_bonus_score;
}

function mlt_percent(_value, _percentage) {
    return _value / 100 * _percentage;
}

init_globals();