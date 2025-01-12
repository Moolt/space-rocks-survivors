var _border_width = 5;

if(selected){
    _border_width = 8;
}

draw_set_color(c_white);
draw_rectangle(x - _border_width, y - _border_width, x + card_width + _border_width, y + card_height + _border_width, false);
draw_set_color(c_black);
draw_rectangle(x - 4, y - 4, x + card_width + 4, y + card_height + 4, false);


draw_set_color(c_white);
draw_rectangle(x, y, x + card_width, y + section_height, false);
draw_set_color(c_black)
draw_rectangle(x, y + section_height, x + card_width, y + card_height, false);

draw_set_color(c_black);
draw_set_font(global.mlt_pixel_font);

draw_text(x + 16, y + section_first_center - 18, option.bonus.title);
draw_set_color(c_white);

draw_text(x + 16, y + section_height + section_first_center - 18, option.malus.title);

draw_set_font(-1);