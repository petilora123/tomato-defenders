event_inherited();

hsp = 0;
vsp = 0;
move_spd_max = 3;
move_spd = 0;
move_dir = 0;

acc = 0.25;
dcc = 0.25;

state = player_state_free;

see_mouse = function()
{
    see = mouse_x - x != 0 ? sign(mouse_x - x) : 1;
}