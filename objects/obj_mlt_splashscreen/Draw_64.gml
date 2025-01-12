draw_set_font(global.mlt_pixel_font_title);
var title_width = string_width("Space Rocks Survivors");
draw_text(MLT_GAME_WIDTH / 2 - title_width / 2, 120, "Space Rocks Survivors");

draw_set_font(global.mlt_pixel_font_medium);
var score_text = "Highscore: " + string(API.read_real("space_rocks_survivors", "highscore", 0));
var score_width = string_width(score_text);
draw_text(MLT_GAME_WIDTH / 2 - score_width / 2, 250, score_text);

var subtitle_text = "Press any key";
var subtitle_width = string_width(subtitle_text);
draw_text(MLT_GAME_WIDTH / 2 - subtitle_width / 2, MLT_GAME_HEIGHT - 120, subtitle_text);
draw_set_font(-1);