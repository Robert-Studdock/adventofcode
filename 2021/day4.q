//2021 day 4
i:{{calls?x}each x}each boards
hoz:{max each x}each i
ver:{max each flip x}each i
s:`flip`orders!$[(min min hoz)< min min ver;(0b;hoz);(1b;ver)]
//board - get the index of the board with the first bingo
b:first where {x=min x}min each s`orders
//col row - get the column or row index of the first bingo
cr:first where {x=min x}s[`orders][b]
//first bingo row - flip board if vertical/column match
fbr:$[s`flip;(flip boards[b])[cr];boards[b][cr]];
//last call to make bingo
lc:first fbr where{x=max x}calls?fbr
//called numbers - dropping uncalled numbers before bingo
called:(1+calls?lc)#calls
//uncalled board numbers sum
ubn:sum called{sum y where not y in x}/: boards[b];
ubn * lc
//correct

//pt 2
i:{{calls?x}each x}each boards

hoz:{max each x}each i
ver:{max each flip x}each i
l:(asc min each hoz, min each ver)[-1 + count boards]

s:`flip`orders!$[((asc min each hoz)?l)<(asc min each ver)?l;(0b;hoz);(1b;ver)]
//board - get the index of the board with the first bingo
b:first where l=min each s`orders
//col row - get the column or row index of the first bingo
cr:first where {x=min x}s[`orders][b]
//first bingo row - flip board if vertical/column match
fbr:$[s`flip;(flip boards[b])[cr];boards[b][cr]];
//last call to make bingo
lc:first fbr where{x=max x}calls?fbr
//called numbers - dropping uncalled numbers before bingo
called:(1+calls?lc)#calls
//uncalled board numbers sum
ubn:sum called{sum y where not y in x}/: boards[b];
ubn * lc
//incorrect - WIP