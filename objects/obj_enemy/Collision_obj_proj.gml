if(dead == false)
{
    life--;
    alpha_hit = 1;
    coll_proj = true;
    alarm[0] = 5;
}
instance_destroy(other);