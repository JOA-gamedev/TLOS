menu_activated = false;
selected_card = noone;

// Loop through the array and deactivate each instance
for (var i = 0; i < array_length(cards); i++) {
    var instance_to_deactivate = cards[i];
    if (instance_exists(instance_to_deactivate)) {
        instance_deactivate_object(instance_to_deactivate);
    }
}