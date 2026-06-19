var _input_h = keyboard_check(vk_right) - keyboard_check(vk_left);
var _input_v = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_d = point_direction(0,0,_input_h,_input_v);
var _input_m = point_distance(0,0,_input_h,_input_v);

if (_input_m != 0)
{
	direction = _input_d;
	image_speed = 1;
}
else
{
	image_speed = 0;
	anim_index_ = 0;
}

four_direction_animate();

x += lengthdir_x(spd_walk_*_input_m,_input_d);
y += lengthdir_y(spd_walk_*_input_m,_input_d);