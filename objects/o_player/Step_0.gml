/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
var _animation_speed = .6;

if keyboard_check(vk_right) && !place_meeting(x+m_speed,y,o_solid)
{
	x+=m_speed;
	sprite_index = s_player_run_right;
	image_speed = _animation_speed;
	image_xscale = 1;
}

if keyboard_check(vk_left)  && !place_meeting(x-m_speed,y,o_solid)
{

	x-=m_speed;
	sprite_index = s_player_run_right;
	image_speed = _animation_speed;
	image_xscale = -1;
}

if keyboard_check(vk_up)  && !place_meeting(x,y-m_speed,o_solid)
{
	y-=m_speed;
	sprite_index = s_player_run_up;
	image_speed = _animation_speed;
}

if keyboard_check(vk_down)  && !place_meeting(x,y+m_speed,o_solid)
{
	y+=m_speed;
	sprite_index = s_player_run_down;
	image_speed = _animation_speed;
}