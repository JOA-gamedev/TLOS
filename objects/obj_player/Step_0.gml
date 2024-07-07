// Player Step event
var left  = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up    = keyboard_check(vk_up);
var down  = keyboard_check(vk_down);


/// collision check
if (left == 1){ 
	sprite_index = sPlayer_w_left
	// is there a "collision" on the right side 
	var left_Top = tilemap_get_at_pixel(map_id, bbox_left-move_speed, bbox_top);
	var left_Bot = tilemap_get_at_pixel(map_id, bbox_left-move_speed, bbox_bottom);
	lastpressed = "left"
	// is there no tile block, you can  move
	if (left_Top == 0 and left_Bot == 0) { x -= move_speed;	}
}

else if (right == 1){ 
	sprite_index = sPlayer_w_right
	
	// is there a "collision" on the left side 
	var right_Top = tilemap_get_at_pixel(map_id, bbox_right +move_speed, bbox_top);
	var right_Bot = tilemap_get_at_pixel(map_id, bbox_right +move_speed, bbox_bottom);
	lastpressed = "right"
	// is there no tile block, you can  move
	if (right_Top == 0 and right_Bot == 0) { x += move_speed;	}
}
	
	
	
else if (up == 1){
	sprite_index = sPlayer_w_up
	
	// is there a "collision" on the top  
	var up_Left  = tilemap_get_at_pixel(map_id, bbox_left,  bbox_top -move_speed);
	var up_Right = tilemap_get_at_pixel(map_id, bbox_right, bbox_top -move_speed);
	// is there no tile block, you can  move
	lastpressed = "up"
	if (up_Left == 0 and up_Right == 0) { y -= move_speed;	}
}
	
else if (down == 1){
	sprite_index = sPlayer_w_down
	// is there a "collision" on the bottom side
	var down_Left  = tilemap_get_at_pixel(map_id, bbox_left,  bbox_bottom +move_speed );
	var down_Right = tilemap_get_at_pixel(map_id, bbox_right, bbox_bottom +move_speed);
	// is there no tile block, you can  move
	lastpressed = "down"
	if (down_Left == 0 and down_Right == 0) { y += move_speed;	}
}
else {
	// stand in last direction
	if lastpressed = "down" {
		sprite_index = sPlayer_s_down
	}
	if lastpressed = "up"{
		sprite_index = sPlayer_s_up
	}
	if lastpressed = "right"{
		sprite_index = sPlayer_s_down
	}
	if lastpressed = "left"{
		sprite_index = sPlayer_s_down
	}
		
}








// Check if 'E' key is pressed
if (keyboard_check_pressed(ord("E"))) {
	sprite_index = sPlayer_grab;
    // Check if carrying an object
    if (carrying_object != noone) {
		carrying_object.y = y + -20;
        carrying_object.picked_up = false; // Drop the object
        carrying_object = noone; // Reset carrying reference
		global.context_menu = spr_empty;
    } else if !no_pickup {  
        // Check for collision with interactable objects
        var obj = instance_place(x, y, obj_interactable); //replace this with ob_interactable if you want a universal implementation
        if (obj != noone) {
            obj.picked_up = true; // Pick up the object
            carrying_object = obj; // Set carrying reference
        }
    }
}

// Update position of picked-up object
if (carrying_object != noone) {
    carrying_object.x = x + carrying_object.sprite_width; // Position directly above the player
    carrying_object.y = y //+ carrying_object.sprite_height; // Adjust if needed
	global.context_menu = spr_drop
}
else if (instance_place(x, y, obj_card)) {
	global.context_menu = spr_pickup
}
else {
	global.context_menu = spr_empty
}


if(global.context_menu) {
	obj_context_menu.x = x + 24
	obj_context_menu.y = y
}
