var spawn_x = random(room_width-64);
var spawn_y = -64;
spk = instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spike_001);
with (spk) {
	fall_speed += min(other.speed_modifier, other.max_speed_modifier);
}
spikes += 1;
if (spikes % 20 == 0) {
	spawn_rate -= 1;
}
// alternate increased speed and spawn rate every 10 spikes
if ((spikes + 10) % 20 == 0) {
	speed_modifier += 1;
}

alarm[0] = max(spawn_rate, min_spawn_rate);
