if(follow_player) {
    var dir_to_player = point_direction(x, y, obj_mlt_player.x, obj_mlt_player.y);
    var move_x = lengthdir_x(move_speed, dir_to_player);
    var move_y = lengthdir_y(move_speed, dir_to_player);
    
    x += move_x;
    y += move_y;
}