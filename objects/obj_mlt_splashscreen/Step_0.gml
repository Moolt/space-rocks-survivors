if(keyboard_check_pressed(vk_anykey) && !API.action_check(INPUT_ACTION.UI_QUIT)) {
    audio_stop_all();
    API.play_sound(snd_mlt_start);
    room_goto(room_mlt_space_rocks_game);
}