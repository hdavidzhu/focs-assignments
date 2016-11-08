```
Student Name: David Zhu
Check one:
[X] I completed this assignment without assistance or external resources.
[ ] I completed this assignment with assistance from ___
   and/or using these external resources: ___
```

### 1

```
a	b
a	c
b	a
b	c
c	c
c	d
d	c

b	a
a	b
a	c
b	c
c	c
d	c
c	d
```
a.
  1. No. There is no one `x` that loves all `y`.
  2. Yes. There exists `c`, such that for any `x`, `x` loves `c`.
  3. Yes. All the `x`s loves at least one `y`.
  4. Yes. All the `y`s gets loved by at least one `x`.
  5. Yes. For instance, there exists `a`, where there exists `b`, such that `a` loves `b`.
  6. No. There is not a situation where a person does not love anyone.
  7. Yes. There exists an `x`, say `a`, that doesn't love everyone.

b.

| Statement                                         | Table 1 | x ≧ y | x = y |
| ------------------------------------------------- | ------- | ----- | ----- |
| ∀x, x. loves(x, x)                                | F       | T     | T     |
| ∀x, y. loves(x, y) → loves(y, x)                  | F       | F     | T     |
| ∀x, y, z. loves(x, y) ∧ loves(y, z) → loves(x, z) | F       | T     | T     |

### 2

1.

```python
1. sum(s(0), 0, s(0))       # Axiom 1
2. sum(s(0), s(0), s(s(0))) # 1, Axiom 2
```

2.

```python
1. sum(0, 0, 0)               # Axiom 1
2. sum(0, s(0), s(0))         # 1, Axiom 2
3. ∃k ∈ x. sum(0, k, k)       # 1, 2, Extrapolation. <-- This is probably not a real rule.
4. ∃k ∈ x. sum(0, s(k), s(k)) # 3, Axiom 2
5. ∀x. sum(0, x, x)           # 1, 3, 4, Induction
```

### 3

a. This method is not recursive.

b. Not really. Divide an conquer is usually division into `log` performance. We still linearly scan through the list.

c. Yes. The max of prior sublists are not re-calculated. Instead, it's cached under `max_so_far`.

d. Not sure exactly how to answer this question. If I consider this as a form of dynamic programming, does the method still need to be memoized?

### 4

a.

b. No. Although it divides the search space by half in every recursive call, it does not combine sub-problems at the end. It's just a divide problem.

c. No. Although the problem gets smaller, we are not caching existing searches. One could argue that disregarding certain zones is like dynamic programming, although I feel this gets into fuzzy territory.

d-e. We could always memoize our initial arguments, or the input, left, and right values into a hashtable (with this tuple as the key). The graph would still look the same as `4a`, although we may have opportunities to terminate early.

(i.e. Reference `4a`, and the subgraphs are the memoized version.)


### 5

Done.

### 6

Done.
