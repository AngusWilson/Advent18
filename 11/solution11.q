.aoc.serial:5177

f:{
	rackID:x+10;
	power:rackID*y;
	power+:.aoc.serial;
	power*:rackID;
	power:value last$[2<count s:string[power];-2_ s;"0"];
	power-:5;
	power
	}
	
	
grid:(300;300)#(cross). 2#enlist 1+til 300;


.aoc.powerGrid:(300;300)#f ./: (cross). 2#enlist 1+til 300;



cellPower:{
	x+:til z;
	y+:til z;
	sum .aoc.powerGrid ./: x cross y
	}
	
	

cellSized:{

	
	sumCells:cellPower[;;x] ./: (cross). 2#enlist til 300-x;
	maxCellInd:first where sumCells=max sumCells;
	xC:floor maxCellInd%300-x;
	yC:maxCellInd mod 300-x;
	(max sumCells;1+(xC;yC))
	}
	
	
(last each b) where a=max a:first each b:cellSized each 1+til 298