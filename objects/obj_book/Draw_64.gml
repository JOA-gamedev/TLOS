if (menu_activated) {
	draw_set_color(c_black);  // You can change this to any color
	draw_set_alpha(0.8);      // Set transparency (0.0 - fully transparent, 1.0 - fully opaque)
	draw_rectangle(0, 0, window_get_width(), display_get_height(), false);
	draw_set_alpha(1);

	
	var text_x = 100;
    var text_y = 150; // Adjust this to position your text
    draw_set_halign(fa_left); // Center align the text
    draw_set_valign(fa_middle); // Middle align the text
    draw_set_color(c_white); // Set text color to white
	draw_set_font(fnt_medium)
	draw_text(50, 50, "ESC")
    draw_text(text_x, text_y, "Boek van de Sprong");
	draw_set_font(fnt_written)
	draw_text(text_x, text_y + spacing*2, "Wie de kunst van de sprong wil meester worden,")
	draw_text(text_x, text_y + spacing*3, "moet enkel het juiste moment kennen.")
	draw_text(text_x, text_y + spacing*4, "Door de kracht van je wil")
	draw_text(text_x, text_y + spacing*5, "en de drukken op de toets 'E' onder de knie te krijgen,")
	draw_text(text_x, text_y + spacing*6, "zul je over afgronden zweven als een vogel.")
	draw_text(text_x, text_y + spacing*7, "Laat je geest scherp zijn en je handen vlug,")
	draw_text(text_x, text_y + spacing*8, "dan zal elke kloof je slechts een stap lijken.")
	draw_text(text_x, text_y + spacing*9, "Oefen geduld en precisie, ridder,")
	draw_text(text_x, text_y + spacing*10, "en de wereld zal aan je voeten liggen")
	draw_text(text_x, text_y + spacing*11, "Vrees niet de leegte, maar vertrouw op de sprong.")
	global.jump_unlocked = true
	
	
}