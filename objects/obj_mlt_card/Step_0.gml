selected = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), x, y, x + card_width, y + card_height);

if(selected && (API.action_check_released(INPUT_ACTION.ACTION_PRIMARY) || mouse_check_button_released(mb_left))){
    obj_mlt_card_spawner.select(option);
}