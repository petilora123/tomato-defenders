

if(yscale > 0)
{
    if(life > 0)
    {
        var _dir = point_direction(x,y,obj_tower.x,obj_tower.y);
            
        direction = _dir;
        angle = sin(current_time * 0.005) * 5;
            
        if(coll_proj == false) speed = move_spd; 
        if(coll_proj == true) speed = 0; 
    }
}


if(life <= 0)
{
    instance_destroy();
}

if(instance_exists(obj_mosca) && sprite_index == spr_moscao)
{
    xscale = 0.5;
    yscale = 0.5;
    yscale = lerp(yscale,0.5,0.1);
}
else 
{
    yscale = lerp(yscale,1,0.1);
} 

alpha_hit = lerp(alpha_hit,0,0.15);