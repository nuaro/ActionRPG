event_inherited();

initialize_movement_entity(0.25,0.5,o_solid);

enum porcupine {
	hit,
	idle,
	move,
	attack,
	wait
}

m_starting_state = porcupine.idle;
m_state = m_starting_state;

image_index = 0;
image_xscale = choose(1,-1);

alarm[1] = random_range(0,1) * game_get_speed(gamespeed_fps);
