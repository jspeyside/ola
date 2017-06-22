// Movement
var movement = 0;
if (keyboard_check(vk_right)) {
	
	if (x + sprite_width/2 + move_speed > room_width) {
		movement = room_width - sprite_width / 2 - x;
	} else {
		movement = move_speed;
	}
}
if(keyboard_check(vk_left)) {
	if (x - sprite_width/2 - move_speed < 0) {
		movement = sprite_width/2 - x;
	} else {
		movement = -move_speed;
	}
}

rotation = -round(1.79*movement);
image_angle += rotation;
x += movement;
