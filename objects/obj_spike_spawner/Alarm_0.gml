var spawn_x = random(room_width-64);
var spawn_y = -64;

// Check for pattern
if (pattern == 0) {
	rand = irandom_range(0, 5)
	if (rand == 1) {
		pattern = 1;
	}
}

switch (pattern)
{
// Gap Pattern
case 1:
	instance_change(obj_spike_gap_spawner, true);
default:
	// Regular Spawn
	spk = instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spike_001);
	with (spk) {
		fall_speed += min(other.speed_modifier, other.max_speed_modifier);
	}
	spikes += 1;
}
// alternate increased speed and spawn rate every 10 spikes

// Every 20 spawns increase rate by 1
if (spikes % 20 == 0) {
	spawn_rate -= 1;
}
// Every 20 spawns increase fall speed by 1
if ((spikes + 10) % 20 == 0) {
	speed_modifier += 1;
}

// Reset spawn countdown
alarm[0] = max(spawn_rate, min_spawn_rate);
