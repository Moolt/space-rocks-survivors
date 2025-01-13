var prev_selected = selected;
selected = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), x, y, x + card_width, y + card_height);

if(!prev_selected && selected) {
    API.play_sound(snd_mlt_hover);
}

if(selected && (API.action_check_released(INPUT_ACTION.ACTION_PRIMARY) || mouse_check_button_released(mb_left))){
    obj_mlt_card_spawner.select(option);
    API.play_sound(snd_mlt_select);
}