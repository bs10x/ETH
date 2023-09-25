## Proof by Mathematical Induction

We want to prove that for all positive integers $n$,

$$
1 + 2 + 3 + \ldots + n = \frac{n(n + 1)}{2}.
$$

### Base Case ($n = 1$):

When $n = 1$, we have

$$
1 = \frac{1(1 + 1)}{2}.
$$

This is true, so the base case holds.

### Inductive Hypothesis:

Assume that the formula holds for some positive integer $k$. That is,

$$
1 + 2 + 3 + \ldots + k = \frac{k(k + 1)}{2}.
$$

### Inductive Step:

We will show that if the formula holds for $k$, it also holds for $k + 1$. Starting with the assumption from the inductive hypothesis,

$$
1 + 2 + 3 + \ldots + k + (k + 1) = \frac{(k + 1)((k + 1) + 1)}{2}.
$$

Now, add $(k + 1)$ to both sides:

$$
\left[1 + 2 + 3 + \ldots + k\right] + (k + 1) = \frac{(k + 1)(k + 2)}{2}.
$$

Using the assumption from the inductive hypothesis:

$$
\left(\frac{k(k + 1)}{2}\right) + (k + 1) = \frac{(k + 1)(k + 2)}{2}.
$$

Simplify the left side:

$$
\frac{k(k + 1) + 2(k + 1)}{2} = \frac{(k + 1)(k + 2)}{2}.
$$

Factor out $(k + 1)$ from the left side:

$$
\frac{(k + 1)(k + 2)}{2} = \frac{(k + 1)(k + 2)}{2}.
$$

Since the left side is equal to the right side, we have shown that if the formula holds for $k$, it also holds for $k + 1$.

### Conclusion:

By mathematical induction, we have proven that

$$
1 + 2 + 3 + \ldots + n = \frac{n(n + 1)}{2}
$$

for all positive integers $n$.
