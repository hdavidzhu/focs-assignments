```
Student Name: David Zhu
Check one:
[X] I completed this assignment without assistance or external resources.
[ ] I completed this assignment with assistance from ___
   and/or using these external resources: ___
```

## 2. Constructing grammars

### a.
```python
L = {0 , 1}
S -> 0S0 | 1S1 | ε

# Derivation
S -> 0S0 -> 01S10 -> 010S010 -> 010010
```

### b.
```python
L = {a, b, c}
S -> aSbC | ε
C -> cC | ε
```

### c.
```python
L = {a, b, c}
S -> aAbSc | ε
A -> aA | ε
```

### d.
```python
L = {a, b}

# Grammar 1.
S -> abS | ε

# Grammar 2.
S -> Sab | ε
```

## 4. Ambiguous grammars

### a. Parse trees

Parse tree 1.

Parse tree 2.

### b. Leftmost derivations

### c. Rightmost derivations
