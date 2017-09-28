///@param direction
var _input_direction = argument0;
m_direction_facing = round(_input_direction/90);
if m_direction_facing == 4 {
	m_direction_facing = 0;
}