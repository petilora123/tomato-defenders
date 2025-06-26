yscale = lerp(yscale, 1.2, 0.1);

if (yscale > 0)
{
    if (life > 0)
    {
        if (state == "followTomate")
        {
            var _dir = point_direction(x, y, obj_tower.x, obj_tower.y);
            direction = _dir;
            speed = 0.8;
        }
        else if (state == "followStart")
        {
            speed = 0;

            if (abs(x - xstart) < 1)
            {
                x = xstart;
                state = "followTomate";
            }
            else
            {
                x = lerp(x, xstart, 0.3);
            }
        }

        angle = sin(current_time * 0.005) * 5;
    }
}

if (life <= 0)
{
    instance_destroy();
}

alpha_hit = lerp(alpha_hit, 0, 0.15);
