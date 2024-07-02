menu_activated = false

selected_card = noone;

holding = false;

var card_preset = [obj_card_schoppen, obj_card_harten , obj_card_klaveren, obj_card_ruiten]
// Array with card objects



// Array with x positions
card_pos = [28, 80, 132, 184];

// Initialize the cards array with null or a placeholder

cards = array_create(array_length(card_pos), 0);

// Loop through the card positions and create instances
for (var i = 0; i < array_length(cards); i++) {
    cards[i] = instance_create_depth(card_pos[i], 96, -1, card_preset[i]);
	cards[i].last_pos = i;
}
instance_deactivate_object(obj_card)

tries = 5;


function checkCardOrder(arr) {
    for (var i = 0; i < array_length(arr); i++) {
        if (cards[i].object_index != arr[i]) {
            return false;
        }
    }
    return true;
}