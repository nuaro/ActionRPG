if m_health <=0 exit;

if hurtbox_entity_can_be_hit_by(other){
	m_invincible = true;
	alarm[0] = game_get_speed(gamespeed_fps)/4;
	
	
	m_health -= other.m_damage; //other refers to the hitbox
	m_state = enemy.hit;


	var _knockback_direction = point_direction(other.x, other.y, x, y);
	set_movement(_knockback_direction, other.m_knockback);
}