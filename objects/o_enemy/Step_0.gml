depth = -y;

if m_health <= 0 && m_state != enemy.hit{

	instance_destroy();

}

if m_state != noone {
	event_user(m_state);
}