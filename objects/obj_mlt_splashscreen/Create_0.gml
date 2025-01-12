highscore = API.read_real("space_rocks_survivors", "highscore", 0);
last_score = global.mlt_current_score;

if(last_score > highscore) {
    highscore = last_score;
    API.write_real("space_rocks_survivors", "highscore", highscore);
}

mlt_init_globals();

title_text = "";
is_game_over = false;

if(room == room_mlt_space_rocks_splash) {
    title_text = "Space Rocks Survivors";
} else {
    title_text = "Game Over";
    is_game_over = true;
}