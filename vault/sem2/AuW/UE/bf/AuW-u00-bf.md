## 1.
1. $1$
2. $12$
3. $3$
4. $\infty$

___
## 2.
#### a)
$2^{32} \ll \log n \ll n \equiv n + \sqrt n \ll 0.01n^2 \ll e^n \equiv 2^n$

#### b)

$2^{32} \ll \log n^2 \equiv \ln n \equiv \log n \ll\ll n \equiv n + \sqrt n \ll 0.01n^2 \ll e^n \equiv 2^n \ll n!$
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

case distinction:
$k < 0$
$k = 0$
$k  > 0$

$$
\begin{align}
1 + (n + 1) \cdot h \leq (1+h)^{n+1} \\

1 + (n + 1) \cdot h \leq (1+h)^{n+1} \\


1 + nh + h \leq \prod_{1}^{n+1}(1+h)

\end{align}
$$

___

## 4.

Zeigen Sie, dass jeder Graph $G$ mit $n \geq 2$ Knoten zwei Knoten $v \neq w$ enthält, sodass $deg(v) = deg(w)$.

Hinweis: Für ein gegebenes $n$, was ist der grösstmögliche Grad den ein Knoten haben kann?
-> $n-1$

___

## 5.

abc

___

## 6.

$G = (V, E), \ |V| \geq 1$

$a \implies b \implies c \implies d \implies a$


// how to show:
- circular implication
- $|E| = |V| - 1 \Longleftrightarrow$ $G$ /zusammenhängend/ und kreisfrei (a => b, b => c)
- $G$ kreisfrei $\Longleftrightarrow$ G zusammenhängend (b => c) 
- $\forall x,y, \in V: \exists! \ \ \text{x-y-path} \in G \Longleftrightarrow$ $G$ Baum (c => d, d => a)