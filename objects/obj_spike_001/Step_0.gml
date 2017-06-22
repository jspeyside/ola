if (y >= room_height - sprite_height) {
	instance_destroy();
	audio_play_sound(snd_crunch, 1, false);
}

y += fall_speed;