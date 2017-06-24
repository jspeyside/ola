if (y >= room_height - sprite_height) {
	instance_destroy();
	audio_play_sound(snd_crunch, 1, false);
	with(obj_ui_score) {
		_score += 10;
	}
}

y += fall_speed;