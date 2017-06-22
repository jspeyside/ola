var spawn_x = random(room_width-64);
var spawn_y = -64;
instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spike_001);

alarm[0] = spawn_rate;
