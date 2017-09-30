/// @description hit state
move_movement_entity(true);
apply_friction_to_movement_entity();

if speed_ == 0 {
	m_state = m_starting_state;
}
