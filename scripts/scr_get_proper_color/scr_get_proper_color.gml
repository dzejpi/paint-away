function scr_get_proper_color(){
	var color_selected = obj_variable_holder.selectedColor;
	var color_returned = make_color_rgb(0, 0, 0);
	
	switch (color_selected)
	{
		case 1:
			color_returned = obj_color_1.buttonColor;
		break;
		
		case 2:
			color_returned = obj_color_2.buttonColor;
		break;
		
		case 3:
			color_returned = obj_color_3.buttonColor;
		break;
		
		case 4:
			color_returned = obj_color_4.buttonColor;
		break;
		
		case 5:
			color_returned = obj_color_5.buttonColor;
		break;
		
		case 6:
			color_returned = obj_color_6.buttonColor;
		break;
		
		case 7:
			color_returned = obj_color_7.buttonColor;
		break;
		
		case 8:
			color_returned = obj_color_8.buttonColor;
		break;
		
		case 9:
			color_returned = obj_color_9.buttonColor;
		break;
		
		case 10:
			color_returned = obj_color_10.buttonColor;
		break;
		
		case 11:
			color_returned = obj_color_11.buttonColor;
		break;
		
		case 12:
			color_returned = obj_color_12.buttonColor;
		break;
		
		case 13:
			color_returned = obj_color_13.buttonColor;
		break;
		
		case 14:
			color_returned = obj_color_14.buttonColor;
		break;
		
		case 15:
			color_returned = obj_color_15.buttonColor;
		break;
		
		case 16:
			color_returned = obj_color_16.buttonColor;
		break;
	}
	
	return color_returned;
}