
// code for activating the menu
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
		//move card up
		
		//here is where i want the four x positions to be checked
		
		for (var i = 0; i < array_length(card_pos); i++) {
		    if (mouse_x >= card_pos[i] && mouse_x <= card_pos[i] + 44) {
				
				// move target card
				cards[i].x = card_pos[selected_card.last_pos];
				
				
				//update last position
				cards[i].last_pos = selected_card.last_pos;
				
				
				//swap array
				var temp = cards[i]
				cards[i] = selected_card
				cards[selected_card.last_pos] = temp
				temp = undefined;
				
				//update the lastpos of selected card to target position
				selected_card.last_pos = i
				// moving card
		        selected_card.x = card_pos[i];
		        selected_card.y = 96;
				//deactivating ref
		        selected_card = noone;
		        holding = false;
		        break;
		    }
		}
		
		// this code can probably be written shorter
	}
	else {
		selected_card = instance_position(mouse_x, mouse_y, cards)
		holding = true;
	}
	
}

// make the card follow the mouse if the card is being held
if(selected_card && holding) {
	for (var i = 0; i < array_length(cards); i++) {
		cards[i].depth = -100;
	}
	selected_card.depth = -200
	
	selected_card.x = mouse_x - 22 //half width of the card
	selected_card.y = mouse_y - 32 //half height of the card
}