image_angle = point_direction(x, y, mouse_x, mouse_y);

var _gamespeed = game_get_speed(gamespeed_fps);
var h_speed_change = lengthdir_x(global.mlt_acceleration, image_angle);
var v_speed_change = lengthdir_y(global.mlt_acceleration, image_angle);

if(API.action_check(INPUT_ACTION.MOVE_UP)) {
    h_speed += h_speed_change;
    v_speed += v_speed_change;
} else if(API.action_check(INPUT_ACTION.MOVE_DOWN)) {
    h_speed -= h_speed_change;
    v_speed -= v_speed_change;
} else {
    if(h_speed > 0) {
        h_speed -= global.mlt_acceleration;
        
        if(h_speed < 0) {
            h_speed = 0;
        }
    }
    
    if(v_speed > 0) {
        v_speed -= global.mlt_acceleration;
        
        if(v_speed < 0) {
            v_speed = 0;
        }
    }
    
    if(h_speed < 0) {
        h_speed += global.mlt_acceleration;
        
        if(h_speed > 0) {
            h_speed = 0;
        }
    }
    
    if(v_speed < 0) {
        v_speed += global.mlt_acceleration;
        
        if(v_speed > 0) {
            v_speed = 0;
        }
    }
}

h_speed = clamp(h_speed, -global.mlt_max_speed, global.mlt_max_speed);
v_speed = clamp(v_speed, -global.mlt_max_speed, global.mlt_max_speed);

x += h_speed;
y += v_speed;