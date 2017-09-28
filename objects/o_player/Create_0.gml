initialize_movement_entity(0.5,1,o_solid);
image_speed = 0;
m_acceleration = 3;
m_max_speed = 2.5;
m_direction_facing = dir.right;
m_roll_speed = 2;
m_roll_direction = 0;

m_state = player.move;



global.player_health = 4;


enum player {

	move,
	sword,
	evade

}

enum dir {
	right,
	up,
	left,
	down
}
//move
m_sprite[player.move, dir.right] = s_player_run_right;
m_sprite[player.move, dir.up] = s_player_run_up;
m_sprite[player.move, dir.left] = s_player_run_right;
m_sprite[player.move, dir.down] = s_player_run_down;


//sword attack 
m_sprite[player.sword, dir.right] = s_player_attack_right;
m_sprite[player.sword, dir.up] = s_player_attack_up;
m_sprite[player.sword, dir.left] = s_player_attack_right;
m_sprite[player.sword, dir.down] = s_player_attack_down;


//sword roll
m_sprite[player.evade, dir.right] = s_player_roll_right;
m_sprite[player.evade, dir.up] = s_player_roll_up;
m_sprite[player.evade, dir.left] = s_player_roll_right;
m_sprite[player.evade, dir.down] = s_player_roll_down;