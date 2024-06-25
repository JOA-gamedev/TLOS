if (instance_place(x, y, obj_player) && !obj_player.carrying_object){
	global.context_menu = spr_use
	obj_player.no_pickup = true
	if(keyboard_check_pressed(ord("E"))) {
		menu_activated = true
	}
}
else {
	obj_player.no_pickup = false
}

//handle pause
if (menu_activated) {
	
	obj_player.move_speed = 0;
	obj_player.image_speed = 0;
	layer_set_visible("puzzel", visible);
}
else {
	obj_player.move_speed = 2;
	obj_player.image_speed = 1
	layer_set_visible("puzzel", false);
}


// handle moving cards
if (mouse_check_button_pressed(mb_left)) {
	if(selected_card && mouse_y >= 96 && mouse_y <= 96+64) {
		//works
		//here is where i want the four x positions to be checked
		if (mouse_x >= 28 && mouse_x <= 28 + 44) {
           // this triggers if you are clicking inside the first box, with a card in your hand
		   // but for some reason dropping it does not work
        } else if (mouse_x >= 80 && mouse_x <= 80 + 44) {
            
            selected_card.x = 80;
			selected_card.y = 96
			selected_card = noone
			
			instance_create_layer(80, 96, "Puzzel", cards[0])
        } else if (mouse_x >= card_pos[2] && mouse_x <= card_pos[2] + 44) {
            // Snap to x3
            selected_card.x = card_pos[2];
			selected_card.y = 96
        } else if (mouse_x >= card_pos[3] && mouse_x <= card_pos[3] + 44) {
            // Snap to x4
            selected_card.x = card_pos[3];
			selected_card.y = 96
        }
	}
	
	selected_card = instance_position(mouse_x, mouse_y, cards)
	
}

if(selected_card) {
	selected_card.x = mouse_x - 22 //half width of the card
	selected_card.y = mouse_y - 32 //half height of the card
}