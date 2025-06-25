var _colls = [obj_tower,obj_wall];

if place_meeting(x + hsp, y, _colls)
{
	while !place_meeting(x + sign(hsp), y, _colls)
	{
		x+=sign(hsp);
	}
	hsp = 0;
}

x+=hsp;
x=round(x);

if place_meeting(x, y + vsp, _colls)
{
	while !place_meeting(x, y + sign(vsp), _colls)
	{
		y+=sign(vsp);
	}
	vsp = 0;
}

y+=vsp;
y=round(y);

xscale = lerp(xscale, 1, 0.15);
yscale = lerp(yscale, 1, 0.15);
