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
    if(!audio_is_playing(snd_music_boss))
    {
        audio_stop_sound(snd_music_main);
        audio_play_sound(snd_music_boss, 1, true);
    }
}
else
{
    if(!audio_is_playing(snd_music_main))
    {
        audio_stop_sound(snd_music_boss);
        audio_play_sound(snd_music_main, 1, true);
    }
}
