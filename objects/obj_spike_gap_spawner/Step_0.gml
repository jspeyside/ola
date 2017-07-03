if (gap_step == 0) {
	var gap_lane = irandom_range(0, 10);
	for (i = 0; i < 10; i++) {
		if (i == gap_lane) {
			continue;
		}
		var spk_x = i * 64;
		spk = instance_create_layer(spk_x, -64, "Enemies", obj_spike_001);
		with (spk) {
			fall_speed += min(other.speed_modifier, other.max_speed_modifier);
		}
	}
}
gap_step += 1;
if (gap_step == 15) {
	instance_change(obj_spike_spawner, true);
}