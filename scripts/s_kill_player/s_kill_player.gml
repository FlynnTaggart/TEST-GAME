with(obj_gun) instance_destroy();
with(obj_shotgun) instance_destroy();

instance_change(obj_dead_player, true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(4, direction) - 2;

if(sign(hsp) != 0) image_xscale = sign(hsp);

global.kills -= global.kills_this_room; 