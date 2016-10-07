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

### 4.

Part of this language contains the following productions.

```
T -> (E)
E -> T

# Which means...
T -> (T)
```

This part could also be described as
```
L = {a^nb^n}
```

From prior exercises, we know that this can not be described with a regular language because matching the count of two different letters require something like a stack. In other words, regular languages cannot keep a potentially infinite count. This has been proven with prior pumping lemmas.

### 5.

### 6.

a.

```
# First left most derivation.
S -> NP VP -> DET N VP -> The girl VP -> The girl VP PP -> The girl V NP PP
  -> The girl touches NP PP -> The girl touches DET N PP
  -> The girl touches the boy PP -> The girl touches the boy P NP
  -> The girl touches the boy with NP -> The girl touches the boy with DET N
  -> The girl touches the boy with the flower

# Second left most derivation.
S -> NP VP -> DET N VP -> The girl VP -> The girl V NP -> The girl touches NP
  -> The girl touches NP PP -> The girl touches DET N PP
  -> The girl touches the boy PP -> The girl touches the boy P NP
  -> The girl touches the boy with NP -> The girl touches the boy with DET N
  -> The girl touches the boy with the flower
```

b.

From the first derivation, we interpret that the girl uses the flower to touch the boy. From the second derivation, we interpret that the boy has the flower, and the girl touches the boy.

c.

```
S -> NP VP -> DET N VP -> A boy VP -> A boy VP PP -> A boy V NP PP
  -> A boy sees NP PP -> A boy sees DET N PP
  -> A boy sees a flower PP -> A boy sees a flower P NP
  -> A boy sees a flower with NP -> A boy sees a flower with DET N
  -> A boy sees a flower with the binoculars

The NP VP would cause a similar ambiguity as 6a.
```

d.

```
S -> NP VP
NP -> NP PP
NP -> DET N | DET A N | N
VP -> V NP
VP -> VP PP
DET -> a | the
A -> tall | purple
N -> boy | girl | flowers | binoculars
V -> touches | sees
PP -> P NP
P -> in | from | with
```
