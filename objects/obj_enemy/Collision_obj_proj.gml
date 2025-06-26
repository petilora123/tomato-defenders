if(dead == false)
{
    life--;
    alpha_hit = 1;
    coll_proj = true;
    alarm[0] = 5;
    audio_play_sound(snd_hurt,1,false);
}
instance_destroy(other);