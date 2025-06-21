function player_state_free()
{
    var key_up = keyboard_check(ord("W"));
    var key_down = keyboard_check(ord("S"));
    var key_left = keyboard_check(ord("A"));
    var key_right = keyboard_check(ord("D"));
    
    var move = key_right - key_left != 0 || key_down - key_up != 0;
    
    if(move)
    {   
        if(move_spd < move_spd_max && move_spd > 0) { xscale = 1.2; yscale = 0.8; }
        
        angle = sin(current_time * 0.01) * 25;
        
        move_dir = point_direction(0,0,key_right-key_left,key_down-key_up);
        move_spd = approach(move_spd,move_spd_max,acc);
    }
    else
    {
        move_spd = approach(move_spd,0,dcc);
    }
    
    hsp = lengthdir_x(move_spd,move_dir);
    vsp = lengthdir_y(move_spd,move_dir);
    
    // funções
    see_mouse();
    
    // normalizando o ângulo e a escala
    xscale = lerp(xscale,1,0.15);
    yscale = lerp(yscale,1,0.15);
    //
    angle = lerp(angle,0,0.15);
    
    
    // adicionar no x e y
    x+=hsp;
    y+=vsp;
}