    draw_self();
    draw_set_font(Fnt9)

if (i < array_length(AIc))
{
	if (i % 2 == 1)
	{
		 draw_set_colour(c_red)
	} else
	{
		 draw_set_colour(c_aqua)
	}
	draw_text_ext(x ,y +30, AIc[i], 50, textWidth - 128);
	
}
else
{
	draw_text(x + 64, y + textWidth - 96, "Computer is Offline")
}
