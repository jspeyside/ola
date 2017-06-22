move_speed = 16;
rotate_speed = 22;

var tile_layer = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(tile_layer);

// Start audio
audio_play_sound(snd_background, 0, true);