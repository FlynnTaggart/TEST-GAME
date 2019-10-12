room_speed = 60;
if(file_exists(SAFEFILE))
	file_delete(SAFEFILE);

var file;
file = file_text_open_write(SAFEFILE);
file_text_write_real(file, room);
file_text_write_real(file, global.kills);
file_text_write_real(file, global.has_gun);
file_text_write_real(file, global.has_shotgun);
//file_text_write_real(file, global.gun_in_hands);
file_text_close(file);
var t = global.has_shotgun