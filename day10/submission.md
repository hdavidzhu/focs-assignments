```
Student Name: David Zhu
Check one:
[X] I completed this assignment without assistance or external resources.
[ ] I completed this assignment with assistance from ___
   and/or using these external resources: ___
```

### 1.

a. Truth table for `a XOR (b OR a)`

_a_ | _b_ | _b_ OR _a_ | _a_ XOR (_b_ OR _a_)
----|-----|------------|---------------------
 F  |  F  | F          | F
 F  |  T  | T          | T
 T  |  F  | T          | F
 T  |  T  | T          | F

b. `XOR`. The two conditions are mutually exclusive in the English `or`. Here, if you _do_ eat your meat and then have pudding, the whole original sentence is true. However, `you can't have any pudding` was set to false to make this happen.

### 2.

![](assets/2.png)

### 3.

```
E -> E + E | T
T -> T x T | (E) | a

# Get a new starting position.
S -> E

# Set terminals to their own productions.
P -> +
X -> x
L -> (
R -> )
A -> a

# Update.
S -> E    # This can be removed.
E -> EPE
E -> T    # This can be removed.
T -> TXT
T -> LER
T -> A    # This can be removed.

# Update #2.
S -> EPE | TXT | LER | A
E -> EPE | TXT | LER | A

# Get the left side down.
F -> EP
U -> TX
M -> LE

# Final.
S -> FE | UT | MR | a
E -> FE | UT | MR | a
T -> UT | MR | a
F -> EP
U -> TX
M -> LE
P -> +
X -> x
L -> (
R -> )
```
