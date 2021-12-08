
x:select sum length from moves where direction = `forward;
update length:neg length from `moves where direction = `up;
y:select sum length from moves where direction <> `forward;
x*y

//pt 2
update length:neg length from `moves where direction = `up;
//working aim
wa:(+\) exec length from update length:0 from moves where direction = `forward;
final_xy:{(sum x;(+/)wa * x)} exec length from update length:0 from moves where direction <> `forward;
(*/)final_xy