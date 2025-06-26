event_inherited();

hsp = 0;
vsp = 0;
move_spd_max = 3;
move_spd = 0;
move_dir = 0;
move = 0;

acc = 0.25;
dcc = 0.25;

delay_shoot = 15;
can_shoot = true;
can_move = 0;

state = player_state_free;

see_mouse = function()
{
    see = mouse_x - x != 0 ? sign(mouse_x - x) : 1;
}

bounce_enemys = function()
{
    if(place_meeting(x,y,obj_enemy))
    {
        hsp = -lerp(hsp,lengthdir_x(20,move_dir),0.2);
        vsp = -lerp(vsp,lengthdir_y(20,move_dir),0.2);
        can_move = 20;
    }
}

create_proj = function()
{
    if(can_shoot == false) { return false }
        
    if(mouse_check_button(mb_left))
    { 
        var _dir = point_direction(x, y, mouse_x, mouse_y);
        
        var _xx = x + lengthdir_x(10,_dir);
        var _yy = y + lengthdir_y(10,_dir);
        
        var _proj = instance_create_layer(_xx, _yy, "proj", obj_proj);
        _proj.direction = _dir;
        _proj.speed = 12;
        randomize();
        audio_play_sound(choose(snd_shoot,snd_shoot_1),0,0)
        
        alarm[0] = delay_shoot;
        
        can_shoot = false;
        if(move == false)
        {
            if(_dir > 90 && _dir < 270)
            {
                angle -= 45;
            }
            else
            {
                angle += 45;
            }
        }

    }    
}