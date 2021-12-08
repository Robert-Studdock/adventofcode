-1+sum (>':) depths

//pt 2
window_sums:depths{sum x (y;y+1;y+2)}/:til count depths
-1+sum (>':) window_sums