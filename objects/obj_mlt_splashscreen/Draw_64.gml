draw_set_font(global.mlt_pixel_font_title);
var title_width = string_width(title_text);
draw_text(MLT_GAME_WIDTH / 2 - title_width / 2, 120, title_text);

draw_set_font(global.mlt_pixel_font_medium);
var score_text = "Highscore: " + string(highscore);
var score_width = string_width(score_text);

var last_score_text = "Your score: " + string(last_score);
var last_score_width = string_width(last_score_text);

draw_text(MLT_GAME_WIDTH / 2 - score_width / 2, 250, score_text);

if(is_game_over) {
    draw_text(MLT_GAME_WIDTH / 2 - last_score_width / 2, 310, last_score_text);
}   

var subtitle_text = "[Press any key]";
var subtitle_width = string_width(subtitle_text);
draw_text(MLT_GAME_WIDTH / 2 - subtitle_width / 2, MLT_GAME_HEIGHT - 120, subtitle_text);
draw_set_font(-1);