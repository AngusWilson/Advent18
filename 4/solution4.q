input: read0 `$"C:/Users/awilson1/Documents/Aoc/4/input4.txt"

p1:{
	tab:([]time:"P"$"20",/:14#/:3_/:input;event:19_/:input);

	tab1:update guard:value each last each "#" vs/: -13_/:event from asc tab where event like "*#*";

	tab2:update fills guard from tab1;

	tab3:delete from tab2 where event like "Guard*";

	tab4:update sleeptime:deltas time,`$5#/:event from tab3;


	tab5:delete from(update sleeptime:rotate[1;sleeptime.mm] from tab4) where event=`wakes;

	tab6: update sleepmins:time+' til each sleeptime from update `minute$time from tab5;

	gnum:first value first key desc select sum sleeptime by guard from tab6;

	m:`int$first key desc count each group raze exec sleepmins from tab6 where guard=gnum;

	gnum*m
	}

p2:{	
	tab:([]time:"P"$"20",/:14#/:3_/:input;event:19_/:input);
	tab1:update guard:value each last each "#" vs/: -13_/:event from asc tab where event like "*#*";
	tab2:update fills guard from tab1;
	tab3:delete from tab2 where event like "Guard*";
	tab4:update sleeptime:deltas time,`$5#/:event from tab3;
	tab5:delete from(update sleeptime:rotate[1;sleeptime.mm] from tab4) where event=`wakes;
	tab6: update sleepmins:time+' til each sleeptime from update `minute$time from tab5;
	
	(*). `int$ value first key desc select count i by guard,sleepmins from ungroup tab6
	}