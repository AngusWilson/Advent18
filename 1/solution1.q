path:`$"C:/Users/awilson1/Documents/Aoc/1/input1.txt"
input: read0 path

/we can just get the raze of the string if it starts with a negative
/if not we need to drop of the "+"

p1:{sum value each "0",/:x}

p1 path

/vary y parameter until get 1 output - bit rubbish but solves it
{(count each group sums value each "0",/:y#x)?2}[input;141670]
