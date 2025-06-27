if(sequence_exists(sq_cutscene))
{
    if(sound == false)
    {
        audio_play_sound(snd_cena,1,false);
        sound = true;
    }
}
else 
{
	audio_stop_sound(snd_cena);
}