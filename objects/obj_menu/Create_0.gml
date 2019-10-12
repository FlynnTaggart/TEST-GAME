#macro SAFEFILE "Save.sv"

gui_wigth = RES_W;
gui_height = RES_H;
gui_margin = 32;

menu_x = gui_wigth + 400;
menu_y = gui_height - gui_margin;
menu_x_target = gui_wigth - gui_margin;
menu_speed = 25;
menu_font = fnt_menu;
menu_itemheight = font_get_size(fnt_menu);
menu_commited = -1;
menu_control = true;

menu[2] = "New game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;

menu_top = menu_y - ((menu_itemheight * 2.5) * menu_items);
