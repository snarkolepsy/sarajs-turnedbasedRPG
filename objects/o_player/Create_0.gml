spd_walk_ = 3;
anim_index_ = 0;

function four_direction_animate() {
	// Update Sprite
	var _anim_length = sprite_get_number(sprite_index) / 4;
	image_index = anim_index_ + (((direction div 90) mod 4) * _anim_length);
	anim_index_ += sprite_get_speed(sprite_index) / 60;

	//If animation would loop on next game step
	if (anim_index_ >= _anim_length)
	{
		animation_end_ = true;	
		anim_index_ -= _anim_length;
	}else animation_end_ = false;
}