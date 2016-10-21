```
Student Name: David Zhu
Check one:
[X] I completed this assignment without assistance or external resources.
[ ] I completed this assignment with assistance from ___
    and/or using these external resources: ___
```

### I-B

```
f(n) = n^2 + 2n + 6
g(n) = 6n^2 - 25

Find k, n0 where f(n) <= g(n) for n > n0

Let k = 1
Let n0 = 3

(3)^2 + 2(3) + 6 <= 6(3)^2 - 25
21 <= 29    <<<< k and n0 are valid.

[k = 1, n0 = 3]
```

### I-C

```
f(n) = n^3 + n^2 - 2n
g(n) = 6n^2 - 25

This problem is impossible b/c n^3 is a higher power than n^2. f(n) will grow
non-linearly faster than g(n).
```

### I-D

```
f(n) = 869,438
g(n) = 923

Let k = Ceil((869,438 / 923) + 1) = 943
Let n0 = 0

869,438 <= 943 * 923
869,438 <= 870,389  <<<< k and n0 are valid.

[k = 943, n0 = 0]
```

### I-E

```
f(n) = 2^n
g(n) = 3^n

Only based on the definition of this HW, let k = 1, n0 = 1.

2^1 <= 3^1
2 <= 3  <<<< k and n0 are valid. g(n) would be greater than f(n).
```

### I-F

```
f(n) = 3^n
g(n) = 2^n

This problem is impossible b/c for any multiple for k, g(n) would always
accelerate exponentially slower than f(n) when n is large.
```

### I-G

```
f(n) = log_2 (n)
g(n) = log_10 (n)

f(n) / g(n) = log(10) / log(2), which is a constant number.
Let k = log(10) / log(2) + 1
Let n0 = 1

Then, the condition would satisfy.
[k = log(10) / log(2), n0 = 1]
```

### I-H

```
f(n) = log_10 (n^2)
g(n) = log_2 (n)

For positive n's
f(n) = 2 log_10 (n)

In this case, g(n) is already greater than f(n) by a constant. Personally, I'm
unsure, by our definition, if f(n) and g(n) would 'grow by the same rate then.'
I'll guess yes?

[k = 1, n0 = 0]
```

### II-A

### II-B

### II-C

### II-D

### II-E

### II-F
