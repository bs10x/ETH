
## 9.4
In this exercise, you prove the remark in Chapter 5, Footnote 20 of the lecture notes. Consider an algebra $\langle R; +, -, 0, \cdot, 1\rangle$ such that:

i) $\langle R; +, -, 0\rangle$ is a group.
ii) $\langle R; \cdot, 1\rangle$ is a monoid.
iii) $a(b + c) = ab + ac$ and $(b + c)a = ba + ca$ for all $a, b, c, \in R$.

Prove that such an algebra satisfies Definition 5.18 in the lecture notes. Each step should consist of one or more applications of the given axioms, and the axioms used should be made explicit.

Hint: consider (1 + 1)(a + b).





$$
\begin{align}
(-a) b &= 0 + (-a) b \qquad \text{G2 von \langle R; +, -, 0, $\cdot$, 1\rangle}\\
& = a 0 + (-a) b \qquad\text{a0 = 0}\\
& = a (-b + b) + (-a) b \qquad \text{G3 von ...}\\
& = a (-b) + a b + (-a) b \qquad\text{Distributiv. von R.} \\
& = a(-b) + (a+(-a)) b \qquad \text{} \\
& = a(-b) + 0b \qquad \text{} \\
& = a(-b) + 0 \qquad \text{} \\
& = a(-b) \\
& \square
\end{align}
$$










Definition 5.18.
A ring 〈R; +, −, 0, ·, 1〉 is an algebra for which
(i) 〈R; +, −, 0〉 is a commutative group.
(ii) 〈R; ·, 1〉 is a monoid.
(iii) a(b + c) = (ab) + (ac) and (b + c)a = (ba) + (ca) for all a, b, c ∈ R (left and right distributive laws).
A ring is called commutative if multiplication is commutative (ab = ba).
20