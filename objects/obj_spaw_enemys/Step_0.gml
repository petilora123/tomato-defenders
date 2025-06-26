if(!instance_exists(obj_fade_out))
{
    var _range = point_distance(obj_tower.x,obj_tower.y,xx,yy);
        
    if(time > 0)
    {
        time--;   
    }
    if(time <= 0) && (instance_number(obj_enemy) <= max_enemys)
    {
        time = random_range(time_min,time_max);
        // aleatorizar o x, y do inimigo
        xx = irandom(room_width);
        yy = irandom(room_height);
        if(_range > 350)
        {
            instance_create_layer(xx,yy,"enemys",obj_enemy);
            final_num_enemys--;
        }
    }
}

if(final_num_enemys <= 0)
{
    instance_create_layer(room_width - 100, room_height / 2, "enemys", obj_mosca);
    var _mosca = instance_create_layer(100, room_height / 2, "enemys", obj_mosca);
    _mosca.xscale = -1.2;
    instance_destroy();
}