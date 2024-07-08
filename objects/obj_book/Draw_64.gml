if (menu_activated) {
	draw_set_color(c_black);  // You can change this to any color
	draw_set_alpha(0.5);      // Set transparency (0.0 - fully transparent, 1.0 - fully opaque)
	draw_rectangle(0, 0, window_get_width(), display_get_height(), false);
	draw_set_alpha(1);

	
	var text_x = window_get_width() / 2;
    var text_y = 150; // Adjust this to position your text
    draw_set_halign(fa_center); // Center align the text
    draw_set_valign(fa_middle); // Middle align the text
    draw_set_color(c_white); // Set text color to white
	draw_set_font(fnt_medium)
    draw_text(text_x, text_y, "De volgorde heb ik achterop");
	draw_text(text_x, text_y + 30, "geschreven in Romeinse cijfers")
	
	draw_text(50, 50, "ESC")
	
}