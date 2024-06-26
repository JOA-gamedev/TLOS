menu_activated = false

selected_card = noone;

holding = false;

// Array with card objects
card_preset = [obj_card_harten, obj_card_schoppen, obj_card_klaveren, obj_card_ruiten];

// Array with x positions
card_pos = [28, 80, 132, 184];

// Initialize the cards array with null or a placeholder

cards = array_create(array_length(card_pos), 0);

// Loop through the card positions and create instances
for (var i = 0; i < array_length(cards); i++) {
    cards[i] = instance_create_layer(card_pos[i], 96, "Puzzel", card_preset[i]);
	cards[i].last_pos = i;
}
