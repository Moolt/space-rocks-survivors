// Inherit the parent event
event_inherited();

var _player_angle = point_direction(x, y, obj_mlt_player.x, obj_mlt_player.y) - 180;
var _angle_diff = angle_difference(image_angle, _player_angle);

if abs(_angle_diff) <= turn_speed {
    image_angle = _player_angle;
} else {
    image_angle += turn_speed * sign(_angle_diff);
}