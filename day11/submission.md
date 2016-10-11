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

| p | q | r | p ^ q ^ r | p v q | p ^ q ^ r -> p v q |
|---|---|---|-----------|-------|--------------------|
| 0 | 0 | 0 | 0         | 0     | 1                  |
| 0 | 0 | 1 | 0         | 0     | 1                  |
| 0 | 1 | 0 | 0         | 1     | 1                  |
| 0 | 1 | 1 | 0         | 1     | 1                  |
| 1 | 0 | 0 | 0         | 1     | 1                  |
| 1 | 0 | 1 | 0         | 1     | 1                  |
| 1 | 1 | 0 | 0         | 1     | 1                  |
| 1 | 1 | 1 | 1         | 1     | 1                  |

This is a (satisfiable) tautology.

### III-2.

| p | q | r | p -> q | q -> r | p -> r | (p -> q) ^ (q -> r) | ((p -> q) ^ (q -> r)) -> (p -> r) |
|---|---|---|--------|--------|--------|---------------------|-----------------------------------|
| 0 | 0 | 0 | 1      | 1      | 1      | 1                   | 1                                 |
| 0 | 0 | 1 | 1      | 1      | 1      | 1                   | 1                                 |
| 0 | 1 | 0 | 1      | 0      | 1      | 0                   | 1                                 |
| 0 | 1 | 1 | 1      | 1      | 1      | 1                   | 1                                 |
| 1 | 0 | 0 | 0      | 1      | 0      | 0                   | 1                                 |
| 1 | 0 | 1 | 0      | 1      | 1      | 0                   | 1                                 |
| 1 | 1 | 0 | 1      | 0      | 0      | 0                   | 1                                 |
| 1 | 1 | 1 | 1      | 1      | 1      | 1                   | 1                                 |

This is a (satisfiable) tautology.

### III-3.

| p | q | p -> q | (p -> q) -> p |
|---|---|--------|---------------|
| 0 | 0 | 1      | 0             |
| 0 | 1 | 1      | 0             |
| 1 | 0 | 0      | 1             |
| 1 | 1 | 1      | 1             |

This is a satisfiable statement.

### III-4.

| p | q | r | p v q v r | -p v -q v -r | p v -q | q v -r | Left <=> (p v q v r) ^ (-p v -q v -r) ^ (p v-q) ^ (q v -r) | Right <=> r v -p | Left v Right |
|---|---|---|-----------|--------------|--------|--------|------------------------------------------------------------|------------------|--------------|
| 0 | 0 | 0 | 0         | 1            | 1      | 1      | 0                                                          | 1                | 1            |
| 0 | 0 | 1 | 1         | 1            | 1      | 0      | 0                                                          | 1                | 1            |
| 0 | 1 | 0 | 1         | 1            | 0      | 1      | 0                                                          | 1                | 1            |
| 0 | 1 | 1 | 1         | 1            | 0      | 1      | 0                                                          | 1                | 1            |
| 1 | 0 | 0 | 1         | 1            | 1      | 1      | 1                                                          | 0                | 1            |
| 1 | 0 | 1 | 1         | 1            | 1      | 0      | 0                                                          | 1                | 1            |
| 1 | 1 | 0 | 1         | 1            | 1      | 1      | 1                                                          | 0                | 1            |
| 1 | 1 | 1 | 1         | 0            | 1      | 1      | 0                                                          | 1                | 1            |

This is a (satisfiable) tautology.

### IV. CNF

```
1. p v (q ^ -(r ^ (s -> t)))              # Given.
2. p v (q ^ (-r v -(s -> t)))             # 1, De Morgan's
3. p v (q ^ (-r v -(-s v t)))             # 2, Conditional
4. p v (q ^ (-r v (s ^ -t)))              # 3, De Morgan's
5. p v (q ^ -r) v (q ^ s ^ -t)            # 4, Distributive
6. p v q ^ (-r v (s ^ -t))                # 5, Distributive
7. p v q ^ (-r v s) ^ (-r v -t)           # 6, Distributive
8. (p v q) ^ (p v -r v s) ^ (p v -r v -t) # 7, Distributive
```
