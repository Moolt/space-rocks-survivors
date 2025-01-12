if(follow != noone) {
    xTo = follow.x;
    yTo = follow.y;
}

x = xTo;
y = yTo;

camera_set_view_pos(view_camera[0], x - camWidth / 2, y - camHeight / 2);