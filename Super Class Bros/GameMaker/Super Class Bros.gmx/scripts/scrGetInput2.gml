/// scrGetInput

right = keyboard_check(vk_right)
left = keyboard_check(vk_left)
up = keyboard_check_pressed(vk_up)
up_release = keyboard_check_released(vk_up); 
down = keyboard_check(vk_down)

// Override the controls for a gamepad
//var 1 = 1;
var thresh = .5;


if (gamepad_is_connected(1)) {
    right = gamepad_axis_value(1, gp_axislh) > thresh;
    left = gamepad_axis_value(1, gp_axislh) < -thresh;
    up = gamepad_button_check_pressed(1,gp_face1)
    up_release = gamepad_button_check_released(1,gp_face1)
    down = gamepad_axis_value(1, gp_axislv) > thresh;
    exitgame = gamepad_button_check(1, gp_select)
}


