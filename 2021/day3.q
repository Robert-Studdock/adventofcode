//day 3
(*/)2 sv'{(x;not x)}`int$avg each flip gammaRate;

//day 3 part 2
wbe:{[mostCommon;input;bitIndex]
    input;
    bits:(flip input)[bitIndex];
    vcb:{[mc;x]$[0.5 = x;`int$mc;mc;`int$x;`int$not `int$ x]}[mostCommon;] avg bits;
    res:input where vcb = bits;
    if[(bitIndex=12) or 1 = count res;:first res];
    .z.s[mostCommon;res;bitIndex+1]
    };

(*/)2 sv' wbe[;gammaRate;0t] each 10b