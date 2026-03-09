draw_image = false

function draw_sprite_centered(sprite, subimg, x, y) {
    var _w = sprite_get_width(sprite)
    var _h = sprite_get_height(sprite)
    var _x = x - _w / 2
    var _y = y - _h / 2
    draw_sprite(sprite, subimg, _x, _y)
}
