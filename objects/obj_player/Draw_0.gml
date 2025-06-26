event_inherited();

draw_text(x, y - 32, string(instance_exists(obj_lifebar)));
draw_sprite_ext(sprite_index,image_index,x,y,xscale*see,yscale,angle,image_blend,image_alpha);