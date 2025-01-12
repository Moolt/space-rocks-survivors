draw_set_color(c_white);
draw_rectangle(h_offset + padding_x - 5, padding_y - 5, h_offset + padding_x + MLT_STATS_CONTAINER_WIDTH + 5, MLT_GAME_HEIGHT - padding_y + 5 - 39, false);
draw_set_color(c_black);
draw_rectangle(h_offset + padding_x - 4, padding_y - 4, h_offset + padding_x + MLT_STATS_CONTAINER_WIDTH + 4, MLT_GAME_HEIGHT - padding_y + 4 - 39, false);

label_y = padding_y + 8;

function draw_label(_label, _value) {
    draw_text(h_offset + padding_x + 16, label_y, _label + ": " + string(_value));
    label_y += v_offset;
}

draw_set_font(global.mlt_pixel_font);
draw_set_color(c_white);
draw_label("Max Speed", global.mlt_max_speed);
draw_label("Acceleration", global.mlt_acceleration);
draw_label("Shoot Speed", 1 / global.mlt_shoot_speed);
draw_set_font(-1);