spd_walk_ = 3;
anim_index_ = 0;

function FourDirectionAnimate() {
	// Update Sprite
	var _animLength = sprite_get_number(sprite_index) / 4;
	image_index = anim_index_ + (((direction div 90) mod 4) * _animLength);
	anim_index_ += sprite_get_speed(sprite_index) / 60;

	//If animation would loop on next game step
	if (anim_index_ >= _animLength)
	{
		animation_end_ = true;	
		anim_index_ -= _animLength;
	}else animation_end_ = false;
}