input:306281

/   \l C:/Users/awilson1/Documents/Aoc/15/solution15.q






f:{
	recipes:0;
	scores:3 7;
	current:0 1;
	while[(8+x)>recipes;
		recipes+:count new:value each enlist each string sum scores current;
		scores,:new;
		current:(current+1+scores current) mod count scores;
		/show scores;
		];
	10#x _scores;
	.aoc.scores:scores
	}
	
f2:{
	recipes:0;
	scores:3 7;
	current:0 1;
	while[not (b:x~value raze string neg[count string x]#scores)or (a:x~value raze string neg[count string x]#-1_scores);
		recipes+:count new:value each enlist each string sum scores current;
		scores,:new;
		current:(current+1+scores current) mod count scores;
		/show scores;
		];
	1+(count scores)-($[a;7;6])
	}	
