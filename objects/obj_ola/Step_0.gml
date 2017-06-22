// Movement

if (keyboard_check(vk_right)) {
	var test = tilemap_get_at_pixel(tilemap, x + move_speed, y);
	show_debug_message(test);
	x += move_speed;
	image_angle -= rotate_speed;
}
if(keyboard_check(vk_left)) {
	x -= move_speed;
	image_angle += rotate_speed;
}
