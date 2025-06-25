array_depth = [];

with(obj_depth)
{
    array_push(other.array_depth, [id,y]);
}

array_sort(array_depth, function(_a, _b)
{
    return _a[1] - _b[1];
});