array_depth = [];

with(obj_depth)
{
    array_push(other.array_depth, [id,y]);
}

array_sort(array_depth, function(_a, _b)
{
    return _a[1] - _b[1];
});

if(instance_exists(obj_mosca))
{
    if(!audio_is_playing(snd_music_boss_1))
    {
        audio_stop_sound(snd_music_main);
        audio_play_sound(snd_music_boss_1, 1, true);
    }
}
else
{
    if(!audio_is_playing(snd_music_main))
    {
        audio_stop_sound(snd_music_boss_1);
        audio_play_sound(snd_music_main, 1, true);
    }
}

if(!instance_exists(obj_mosca) && !instance_exists(obj_spaw_enemys))
{
    instance_create_layer(0,0,"transition",obj_fade_out);
    
    alarm[0] = 1;
}