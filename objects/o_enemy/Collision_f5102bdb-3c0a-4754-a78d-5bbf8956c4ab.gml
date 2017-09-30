if m_health <=0 exit;


m_health -= other.m_damage; //other refers to the hitbox
m_state = enemy.hit;


var _knockback_direction = point_direction(other.x, other.y, x, y);
set_movement(_knockback_direction, other.m_knockback);