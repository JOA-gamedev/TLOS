menu_activated = false

selected_card = noone;

holding = false;

cards = [obj_card_harten, obj_card_schoppen, obj_card_klaveren, obj_card_ruiten]

card_pos = [28, 80, 132, 184]

instance_create_layer(28, 96, "Puzzel", cards[0])
instance_create_layer(80, 96, "Puzzel", cards[1])
instance_create_layer(132, 96, "Puzzel", cards[2])
instance_create_layer(184, 96, "Puzzel", cards[3])