/// @description controlls the card animation

if forward {
	if image_index = last_image {
		image_speed = 0
	}
	else {
		image_speed = 1
	}
}else {
	if image_index = 0 {
		image_speed = 0
	}
	else {
		image_speed = -1
	}
}
if mouse_check_button_released(mouse_lastbutton){
	forward = false
}