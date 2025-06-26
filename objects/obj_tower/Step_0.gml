angle = sin(current_time * 0.005) * 3;

xscale = lerp(xscale,1,0.15);
yscale = lerp(yscale,1,0.15);

if(lifes <= 0)
{
    image_index = 1;
    instance_create_layer(0,0,"transition",obj_fade_out);
    
    room_restart();
}
