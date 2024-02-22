## 1.
1. a
2. b
3. c
4. d

___
## 2.
#### a)

$$
\begin{align}
e^n = O(c^n) \\
2^n = O(c^n) \\
0.01n^2 = O(n^2) \\
n + \sqrt{n} = O(n +\sqrt{n}) \\
n = O(n) \\
log(n) = O(log(n)) \\
2^{32} = O(1) \\

\end{align}
$$
#### b)
$$
\begin{align}
n! = O(n!) \\
log(n^2) = 2 \cdot log(n) = O(log(n)) \\
ln(n) = O(ln(n)) \\
n^{1/4} = O(n^{1/4}) \\
\frac{n}{log(n)} = O(??) \\
e^{\sqrt{log(n)}} = O(??) \\

\end{align}
$$
___

## 3.

#### a)
$\forall n \in \mathbb N$: $\frac{1}{1\cdot2}+\frac{1}{2\cdot3}+\frac{1}{3\cdot4}+\dots+\frac{1}{n\cdot(n+1)} = \frac{n}{n+1}$

base case:
$n \leftarrow 1$
$\frac{1}{1\cdot 2} = \frac{1}{2}$

inductive hypothesis:
$\sum_{i = 1}^{n}\frac{1}{n\cdot (n+1)} = \frac{n}{n+1}$

inductive step:
$n \leftarrow n+1$
$\sum_{i = 1}^{n+1}\frac{1}{n+1\cdot (n+2)} = \frac{n+1}{n+2}$

#### b)
