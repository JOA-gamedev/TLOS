// first we code the collision
//in combination with the pressing of e

// when no longer colliding we close the book
// am gonna copy some code from the cards

/// @description controlls the card animation
// Check if player is colliding with the book

if (place_meeting(x, y, obj_player)) {
	open = true
	if keyboard_check_pressed(ord("E")) {
		menu_activated = true
	}
}
else {
	open = false
}

if open {
	if image_index = last_image{
		image_speed = 0
	}
	else {
		image_speed = 1
	}
	global.context_menu = spr_use
}else {
	if !image_index = 0 {
		image_speed = -1
	}
	else {
		image_speed = 0
	}
	global.context_menu = spr_empty
}

if (menu_activated) {
	obj_player.move_speed = 0;
	obj_player.image_speed = 0;
	//layer_set_visible("boek", visible);
	
}
else {
	obj_player.move_speed = 2;
	obj_player.image_speed = 1;
	//layer_set_visible("boek", false);
	
}