/// @description move state

if alarm[1] <= 0 {
	apply_friction_to_movement_entity();
} else {
	add_movement_maxspeed(direction_, 0.05, 0.5)
}


move_movement_entity(true);

if speed_ == 0 {

	alarm[1] = random_range(1,3) * game_get_speed(gamespeed_fps);
	m_state = porcupine.idle;


}