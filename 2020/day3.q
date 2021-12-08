//2020 day 3
{[x;y;slope;trees]
    x+:3;
    y+:1;
    if[y=323;:trees];
    trees+:slope[y][(til 31) x mod 31];
    
    .z.s[x;y;slope;trees]
    
    }[0;0;slope;0]

//2020 day 3 pt 2 WIP - stack error
{[x;y;xinc;yinc;slope;trees]
    x+:xinc;
    y+:yinc;
    if[y=323;:trees];
    trees+:slope[y][(til 31) x mod 31];
    //TODO recursion catch conditions
    .z.s[x;y;xinc;yinc;slope;trees]
    
    }[0;0;;;slope;0] .' (3 1;1 1;5 1;7 1;1 2)