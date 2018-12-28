input:first read0 `$"C:_______________/aoc/input5.txt"

p1:{count ({x (til count x)except raze (a where not 1=deltas a:where (not(=':)x)&(=':)upper x)-/:0 1}/)}



p2:{min {count 1_ ({x (til count x)except raze (a where not 1=deltas a:where (not(=':)x)&(=':)upper x)-/:0 1}/) " ",x except (y;upper y)}[x;] each .Q.a}