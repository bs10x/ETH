
## 9.4
In this exercise, you prove the remark in Chapter 5, Footnote 20 of the lecture notes. Consider an algebra $\langle R; +, 1, 0, \cdot, 1\rangle$ such that:

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
& = a(-b) + (a+(-a))
\end{align}
$$
