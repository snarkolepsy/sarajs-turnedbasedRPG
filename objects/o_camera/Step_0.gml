/// @description Update camera

//Update destination
if (instance_exists(follow_))
{
	x_to_ = follow_.x;
	y_to_ = follow_.y;
}

//Update object position
x += (x_to_ - x) / 15;
y += (y_to_ - y) / 15;

//Keep camera center inside room
x = clamp(x,view_w_half_,room_width-view_w_half_);
y = clamp(y,view_h_half_,room_height-view_h_half_);

//Update camera view
camera_set_view_pos(cam_,x-view_w_half_,y-view_h_half_);