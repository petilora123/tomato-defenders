var _amt = (life / life_max) * lifebar_w; //formula da barra de vida
var _amt_fixed = (life_max / life_max) * lifebar_w; //formula da barra de vida fixa
var _amt_feedback = (life_feedback / life_max) * lifebar_w; //formula da barra de vida com o feedback
var _x1 = 32;
var _y1 = 16;
var _x2 = _x1 + _amt;
var _x2_fixed = _x1 + _amt_fixed;
var _x2_feedback = _x1 + _amt_feedback;
var _y2 = _y1 + lifebar_h;

if(life > 0)
{
// bakcground
draw_set_color(color_2);
draw_rectangle(_x1,_y1,_x2_fixed,_y2,false);    

// feedback
draw_set_color(color_4);
draw_rectangle(_x1,_y1,_x2_feedback,_y2,false);  
    
// lifebar    
draw_set_color(color_1);
draw_rectangle(_x1,_y1,_x2,_y2,false);

// outline
draw_set_color(color_3);
draw_rectangle(_x1,_y1,_x2_fixed,_y2,true);            
}