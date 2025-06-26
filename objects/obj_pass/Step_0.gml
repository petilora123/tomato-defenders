if(mouse_check_button_pressed(mb_right) && room == rm_game_win)
{
    instance_create_layer(0,0,"transition",obj_fade_out);
    room_goto(rm_game_win_1);
}