///@arg hitbox
var _hitbox = argument0;
var _is_target  = is_target(object_index, _hitbox.m_targets);

return !m_invincible && _is_target;