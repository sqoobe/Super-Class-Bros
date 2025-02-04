/// scrGetInput
var player = argument0

if(player=0){
    right = keyboard_check(vk_right)
    left = keyboard_check(vk_left)
    up = keyboard_check_pressed(vk_up)
    up_release = keyboard_check_released(vk_up); 
    down = keyboard_check(vk_down)
    exitgame = keyboard_check(vk_escape)
    forwardAttack = keyboard_check(ord("F"))
}

if (player=1){
    right = keyboard_check(ord("D"))
    left = keyboard_check(ord("A"))
    up = keyboard_check_pressed(ord("W"))
    up_release = keyboard_check_released(ord("W"))
    down = keyboard_check(ord("S"))
    exitgame = keyboard_check(vk_escape)
    forwardAttack = keyboard_check(ord("F"))
}

// Override the controls for a gamepad
var thresh = .5;


if (gamepad_is_connected(player)) {
    right = gamepad_axis_value(player, gp_axislh) > thresh;
    left = gamepad_axis_value(player, gp_axislh) < -thresh;
    up = gamepad_button_check_pressed(player,gp_face1)
    up_release = gamepad_button_check_released(player,gp_face1)
    down = gamepad_axis_value(player, gp_axislv) > thresh;
    forwardAttack = gamepad_button_check_pressed(player,gp_face3)
    special = gamepad_button_check_pressed(player,gp_face2)
    if(gamepad_axis_value(player, gp_axisrv) > thresh || (gamepad_axis_value(player, gp_axislv) > thresh && gamepad_button_check_pressed(player,gp_face3)))
    {
        downAir=true
    }
    if(gamepad_axis_value(player, gp_axisrv) < -thresh || (gamepad_axis_value(player, gp_axislv) < -thresh && gamepad_button_check_pressed(player,gp_face3)))
    {
        upAir=true
    }
    if(gamepad_axis_value(player, gp_axisrh) > thresh || (gamepad_axis_value(player, gp_axislh) > thresh && gamepad_button_check_pressed(player,gp_face3)))
    {
        rightAir=true
    }
    if(gamepad_axis_value(player, gp_axisrh) < -thresh || (gamepad_axis_value(player, gp_axislh) < -thresh && gamepad_button_check_pressed(player,gp_face3)))
    {
        leftAir=true
    }
    
    exitgame = gamepad_button_check(player, gp_select)
}
