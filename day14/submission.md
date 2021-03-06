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

Both cost 1 unit. An array can be directly referenced by its address, and a linked list is referenced from the first element down.

### II-B

Reading from array would cost 1 unit (by address). Reading from linked list would cost 7, since you have to trace from the 1st element.

### II-C

Adding an element to an array could be 1 or n, depending on how much memory was allocated to the array in the first place. If we didn't allocate enough, we would have to copy the array to a bigger memory block.

Adding an element to a linked list could cost 1 or n, depending on where we add the element. If you add at the beginning, you can just swap the reference of the linked list in the first node. Anywhere else would require tracing down the list to that position and performing the swap.

The cheapest place to add to an array is at the end. The cheapest place for a linked list is at the beginning.

### II-D

Deleting from array would cost n-5 units, since we would need to shift all the elements right of the 5th index left.

Deleting from a linked list would cost 5 units, since we have to traverse to the location. Once we are there, we can just redirect the references to ignore the 5th element.

### II-E

Both confirmations would take n units (worst case), since we have to check all elements.

### II-F-1

Checking if the element is not in the list would take n units, which is worse than II-E, since we can short circuit / stop early if we find the element first.

### II-F-2

For a linked list, having a reference the previous node is also really useful. This way, adding and removing from the end of a linked list would not be so expensive.

### II-G

For an array, the above still applies, so either 1 or n.

For a linked list, it would cost n units, as we still need to traverse down.

### II-H

Deleting still costs the same for an array.

For a linked list, it would still cost the same.

### II-J

For an array, it would cost log(n), as we can bisect to find our answer. To not find our answer, it would still cost log(n), as the number falls out of range.

For a linked list, it would cost n, since you have to trace through the list. However, the list being sorted, finding that y is not present is cheaper once you find a number that is greater than y.
