/// @description Sword Attack State
image_speed = 1;

if animation_hit_frame(1) {
	var _angle = m_direction_facing * 90;
	var _life = 3;
	var _damage = 1;
	var m_knockback = 8;
	var _hitbox = create_hitbox(s_sword_hitbox,x,y,_angle,_life,[],_damage,m_knockback);
	
	
	switch m_direction_facing {
	
		case dir.up: 
			_hitbox.y -= 4;
			break;
		default:
			_hitbox.y -= 8;
			break;
	
	}
}

if animation_hit_frame(image_number -1) {
	m_state = player.move;
}
