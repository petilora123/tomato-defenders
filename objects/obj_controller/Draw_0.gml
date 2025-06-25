for(var _i = 0; _i < array_length(array_depth); _i++)
{
    var _index = array_depth[_i];
    var _inst = _index[0];
    
    with(_inst)
    {
        event_perform(ev_draw, 0);
    }
}