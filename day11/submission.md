```
Student Name: David Zhu
Check one:
[X] I completed this assignment without assistance or external resources.
[ ] I completed this assignment with assistance from ___
   and/or using these external resources: ___
```

### I-1.

```
1. (p -> q) ^ (p -> r) # Given.
Prove: p -> (q ^ r)

2. (-p v q) ^ (-p v r) # 1, Conditional
3. -p v (q ^ r)        # 2, Distributive
4. p -> (q ^ r)        # 3, Conditional --> QED
```

### I-2.

```
1. (p -> (q ^ r)) ^ (p -> (q v -r)) # Given.
Prove: p -> q

2. p -> (q v r) ^ (q v -r)          # 1, HW Problem I-1
3. p -> q v (r ^ -r)                # 2, Distributive
4. p -> q v F                       # 3, Negation
5. p -> q                           # 4, Identity
```

### II.

| p | q | r | p -> q | p -> r | q ^ r | (p -> q) ^ (p -> r) | p -> (q ^ r) |
|---|---|---|--------|--------|-------|---------------------|--------------|
| 0 | 0 | 0 | 1      | 1      | 0     | 1                   | 1            |
| 0 | 0 | 1 | 1      | 1      | 0     | 1                   | 1            |
| 0 | 1 | 0 | 1      | 1      | 0     | 1                   | 1            |
| 0 | 1 | 1 | 1      | 1      | 1     | 1                   | 1            |
| 1 | 0 | 0 | 0      | 0      | 0     | 0                   | 0            |
| 1 | 0 | 1 | 0      | 1      | 0     | 0                   | 0            |
| 1 | 1 | 0 | 1      | 0      | 0     | 0                   | 0            |
| 1 | 1 | 1 | 1      | 1      | 1     | 1                   | 1            |

`(p -> q) ^ (p -> r)` and `p -> (q ^ r)` are logically equivalent.

### III-1.
