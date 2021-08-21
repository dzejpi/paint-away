function scr_get_proper_brush(){
	var brush_selected = obj_variable_holder.selectedBrush;
	var brush_returned = spr_brush_usable1;
	
	switch (brush_selected)
	{
		case 1:
			brush_returned = spr_brush_usable1;
		break;
		
		case 2:
			brush_returned = spr_brush_usable2;
		break;
		
		case 3:
			brush_returned = spr_brush_usable3;
		break;
		
		case 4:
			brush_returned = spr_brush_usable4;
		break;
		
		case 5:
			brush_returned = spr_brush_usable5;
		break;
		
		case 6:
			brush_returned = spr_brush_usable6;
		break;
		
		case 7:
			brush_returned = spr_brush_usable7;
		break;
		
		case 8:
			brush_returned = spr_brush_usable8;
		break;
	}
	
	return brush_returned;
}