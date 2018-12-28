path:`$"C:/Users/awilson1/Documents/Aoc/3/input3.txt"
input: read0 path

p1:{
	parsed:{":" vs last "@" vs x}each x;

	corners:{value ssr[x;",";" "]}each first a:flip parsed;
	rng:{value ssr[x;"x";" "]}each last a;

	sum 1<count each group raze (cross)./: corners+'' til each/: rng
	}
	
	
p2:{
	parsed:{":" vs last "@" vs x}each x;

	corners:{value ssr[x;",";" "]}each first a:flip parsed;
	rng:{value ssr[x;"x";" "]}each last a;


	cntDict:count each group raze coords:(cross)./: corners+'' til each/: rng;
	
	1+where all each 1=cntDict coords
	}