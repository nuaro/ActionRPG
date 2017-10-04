initialize_movement_entity(1,0.5, o_solid);
initialize_hurtbox_entity();

image_speed = 0;

m_max_health = 2;
m_health = m_max_health;

m_starting_state = noone;
m_state = m_starting_state;

enum enemy {
	hit
}
