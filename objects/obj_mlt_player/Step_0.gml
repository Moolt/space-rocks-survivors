if(API.action_check(INPUT_ACTION.MOVE_UP)) {
	motion_add(image_angle, 0.1);
}

image_angle = point_direction(x, y, mouse_x, mouse_y);