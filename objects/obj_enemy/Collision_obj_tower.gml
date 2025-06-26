other.xscale = 1.4;
other.yscale = 0.8;
other.lifes-=2;
obj_lifebar.life-=2;
audio_play_sound(choose(snd_hurt_tomato_1,snd_hurt_tomato),1,0);
instance_destroy();