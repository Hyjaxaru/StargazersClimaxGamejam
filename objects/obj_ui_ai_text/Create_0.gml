image_xscale = 1;
image_yscale = 1;
textWidth = (sprite_get_width (sprite_index))- 2

popup_width = sprite_get_width(sprite_index)
popup_height = sprite_get_height(sprite_index)

loading_popup_centre_x = x + popup_width / 2
loading_popup_centre_y = y + popup_height / 2
loading_popup_width = 512
loading_popup_height = 64

randomise()
misinfo_index = random_range(0, array_length(global.MISINFORMATION) - 1)
misinfo_string = global.MISINFORMATION[misinfo_index]

function draw_rectangle_centered(x, y, w, h, outlined)
{
    var x1 = x - w / 2
    var y1 = y - h / 2
    var x2 = x + w / 2
    var y2 = y + h / 2
    draw_rectangle(x1, y1, x2, y2, outlined)
}