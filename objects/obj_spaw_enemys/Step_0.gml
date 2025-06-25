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
    }
}