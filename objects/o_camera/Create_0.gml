/// @description Set up camera
cam_ = view_camera[0];
follow_ = o_player;
buff_ = 32;
view_w_half_ = camera_get_view_width(cam_) * 0.5;
view_h_half_ = camera_get_view_height(cam_) * 0.5;
x_to_ = xstart;
y_to_ = ystart;
display_set_gui_size(320,180);