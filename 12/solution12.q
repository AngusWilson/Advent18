input: read0 `$"C:/Users/awilson1/Documents/Aoc/race/race.txt"
/input: read0 `$"C:/Users/awilson1/Documents/Aoc/12/test12.txt"


/p1
gen:20
/p2
gen:100

initial:15_first input;
rules:2_input;


.aoc.dict:(!) . flip rules[;(0 1 2 3 4;9)];


.aoc.full:((2*gen)#"."),initial,(2*gen)#".";

do[gen;show (-3+2*gen) _.aoc.full;.aoc.full:"....",({.aoc.dict 5# x _.aoc.full} each 2+til -4+count .aoc.full)];

sum (where "#"=.aoc.full)-2*gen;

triples:(-2*gen)+where "#"= .aoc.full;

show "part 2"
sum (50000000000-100)+triples


16942 too low
31843 too low

sum value each -3#/:-7_/:input where {(-5#-1_x)~key 5#desc count each group asc a where (a:-10_x) in .Q.a}each input