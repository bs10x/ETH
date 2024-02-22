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
$\forall n \in \mathbb N$:
$\frac{1}{1\cdot2}+\frac{1}{2\cdot3}+\frac{1}{3\cdot4}+\dots+\frac{1}{n\cdot(n+1)} = \frac{n}{n+1}$

base case:
$k \leftarrow 1$
$$
\frac{1}{1\cdot 2} = \frac{1}{2}
$$

inductive hypothesis:
$$
\sum_{k = 1}^{n}\frac{1}{k\cdot (k+1)} = \frac{n}{n+1}
$$

inductive step:
$k \leftarrow n+1$
$$
\begin{align}
\sum_{k = 1}^{n+1}\frac{1}{k+1\cdot (k+2)} &= \frac{n+1}{n+2} \\
&\overset{i.H}{=} \frac{n}{n+1} + \frac{1}{(n+1) \cdot (n+2)} \\
&= \frac{n \cdot (n+2)}{(n+1) \cdot (n+2)} + \frac{1}{(n+1) \cdot (n+2)} \\
&= \frac{n^2 + 2n + 1}{(n+1) \cdot (n+2)} \\
&= \frac{(n+1)^2}{(n+1) \cdot (n+2)} \\
&= \frac{n+1}{n+2} \\
\square
\end{align}
$$


#### b)
$\forall n \in \mathbb N, \ n\geq 1$ and $\forall h \in \mathbb R, \ h \geq -1$:
$1 + nh \leq (1+h)^n$

let $h \in \mathbb R$ be arbitrary.

base case:
$k \leftarrow 1$
$$
1 + 1\cdot h = (1 + h)^1
$$

inductive hypothesis:
$$
1 + n\cdot h \leq (1+h)^n
$$

inductive step:
$k \leftarrow k+1$
$$
\begin{align}
1 + (n + 1) \cdot h \leq (1+h)^{n+1} \\

1 + nh + h \leq \prod_{1}^{n+1}(1+h)

\end{align}
$$