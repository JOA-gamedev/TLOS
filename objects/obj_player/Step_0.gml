// Player Step event

// Initialize movement variables
var move_x = 0;
var move_y = 0;

// Check for horizontal movement (A/D keys)
if (keyboard_check(vk_left)) {
    move_x = -move_speed;
}
if (keyboard_check(vk_right)) {
    move_x = move_speed;
}

// Check for vertical movement (W/S keys)
if (keyboard_check(vk_up)) {
    move_y = -move_speed;
}
if (keyboard_check(vk_down)) {
    move_y = move_speed;
}


// Apply movement
x += move_x;
y += move_y;



// Check if 'E' key is pressed
if (keyboard_check_pressed(ord("E"))) {
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
	obj_context_menu.x = x + 40
	obj_context_menu.y = y + 10
}


