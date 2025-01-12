if(room == room_mlt_space_rocks_game) {
    draw_set_font(global.mlt_pixel_font);
    
    draw_text(15, 15, "Lives: " + string(global.mlt_current_lives) + "/" + string(global.mlt_max_lives));
    draw_text(15, 15 + 32 + 8, "Score: " + string(displayed_score));
    draw_text(15, 15 + 64 + 16, "Stage " + string(stage + 1) + ": " + string(seconds_until_next_stage));
    
    draw_set_font(-1);
}
