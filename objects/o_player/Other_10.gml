/// @description Move State
/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction = point_direction(0,0,_x_input,_y_input);
var _attack_input = keyboard_check_pressed(ord("Z"));
var _roll_input = keyboard_check_pressed(ord("X"));

m_roll_direction = m_direction_facing * 90;


if _x_input == 0 && _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();

}else {
	image_speed = 0.6;
	if _x_input != 0 {
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, m_acceleration, m_max_speed);
	m_roll_direction = m_direction_facing * 90;
}


if _attack_input ==  true {
	image_index = 0;
	m_state = player.sword;
}

if _roll_input ==  true {
	image_index = 0;
	m_state = player.evade;
}



move_movement_entity(false);
