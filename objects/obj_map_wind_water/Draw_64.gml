if draw_image {
    draw_sprite_centered(image, index, display_get_width() / 2, display_get_height() / 2)
    draw_text(0, 0, "Press [ENTER] to close image")
}