
draw_self();

//draw_text_ext(x, y, "welcome to the internet", 20, textwidth + 20);

draw_set_colour(c_white);
//draw_rectangle_centered(loading_popup_centre_x, loading_popup_centre_y, loading_popup_width, loading_popup_height, true)
draw_circle(loading_popup_centre_x - 224 , loading_popup_centre_y, 16, true)
draw_set_font(fnt_terminal_regular_small)
draw_text(loading_popup_centre_x - 192, loading_popup_centre_y - 16, "Fun Fact:")
draw_set_font(fnt_terminal_regular);
draw_text_ext(loading_popup_centre_x - 192, loading_popup_centre_y, misinfo_string, 24, loading_popup_width)

