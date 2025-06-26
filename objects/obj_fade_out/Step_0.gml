if(start)
{
    alpha = lerp(alpha,0,0.1);
    if(room == rm_01 )obj_lifebar.life = 15;
}
if(alpha <= 0) instance_destroy();