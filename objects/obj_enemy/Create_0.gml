move_spd = 0.3;
life = 3;
angle = 0;
xscale = 1;
yscale = 0;

coll_proj = false;
kit = choose(0,0,0,1,0,0,0);

alpha_hit = 0;
dead = false;
randomize();
if(instance_exists(obj_mosca)) sprite_index = spr_moscao; else sprite_index = choose(spr_carrot,spr_beetroot,spr_mushroom,spr_pumpkin);
