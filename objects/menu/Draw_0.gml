if (menu_activated) {
	draw_set_color(c_black);  // You can change this to any color
	draw_set_alpha(0.5);      // Set transparency (0.0 - fully transparent, 1.0 - fully opaque)
	draw_rectangle(0, 0, window_get_width(), display_get_height(), false);
	draw_set_alpha(1);
	
	draw_sprite(spr_card_placeholder, 0,28, 96)
	draw_sprite(spr_card_placeholder, 0,80, 96)
	draw_sprite(spr_card_placeholder, 0,132, 96)
	draw_sprite(spr_card_placeholder, 0,184, 96)
}