test: read0 `$"C:/Users/awilson1/Documents/Aoc/10/test10.txt"
input:  read0 `$"C:/Users/awilson1/Documents/Aoc/10/input10.txt"



.aoc.start:value each first each (">"vs/:/: 1_/:"<" vs/: input)[;0];
.aoc.velocity:value each first each (">"vs/:/: 1_/:"<" vs/: input)[;1];

draw:{[s]
	rebased:flip(flip current)+'neg min current:.aoc.start+.aoc.velocity*s;
	grid:(1+max rebased)#0b;

	flip any .[grid;;:;1b]each rebased
	}



minInd:{
	where a =min a:{[start;velocity;s]{sqrt sum (x;y) xexp 2}. max flip(flip current)+'neg min current:start+velocity*s}[.aoc.start;.aoc.velocity;]each til x
	}
	

draw first minInd 100000