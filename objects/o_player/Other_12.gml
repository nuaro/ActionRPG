/// @description roll-evade
image_speed =0.7;


set_movement(m_roll_direction,m_roll_speed);
move_movement_entity(false);

if animation_hit_frame(image_number -1) {
	m_state = player.move;
}