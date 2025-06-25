event_inherited();

if(alpha_hit > 0)
{
    gpu_set_fog(true,c_white,0,0);
    draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,angle,image_blend,alpha_hit);
    gpu_set_fog(false,c_white,0,0);
}