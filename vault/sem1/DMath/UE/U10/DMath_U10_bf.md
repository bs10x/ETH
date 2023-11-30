

## 10.5

Let $F = \mathbb{Z}_5[x]_{x^2+4x+1}$

(a) Prove that $F$ is a field.

**Proof:**
$\mathbb{Z}_5$ is a field, since $5$ is prime. (Theorem 5.23.)   
Now, since we have shown $\mathbb{Z}_5$ to be a field, it remains to show that the polynomial $x^2 +4x +1$ on $\mathbb{Z}_5$ is irreducible (Theorem 5.37.). To do this, we must prove that $x^2 +4x +1$ has no roots in $\mathbb{Z}_5$. 
Since
$$\mathbb{Z}_5 =\{0, 1, 2, 3, 4\}$$
we do this:
$$
\begin{align}
&x= 0 \implies 0^2 + 4(0) + 1 \not\equiv_5 0 \\
&x = 1 \implies 1^2 + 4(1) + 1 \not\equiv_5 0 \\
&x= 2 \implies 2^2 + 4(2) + 1 \not\equiv_5 0 \\
&x= 3 \implies 3^2 + 4(3) + 1 \not\equiv_5 0 \\
&x= 4 \implies 4^2 + 4(4) + 1 \not\equiv_5 0 \\
\end{align}
$$
which concludes the proof, as the polynomial $x^2 + 4x + 1$ is congruent to zero over no element in the field $\mathbb{Z}$.
$\square$
___


(b) Prove that $F^* = \langle x + 3 \rangle$



I have the following field:
$F = \mathbb{Z}_5[x]_{x^2+4x+1}$
and i need to prove that $F^* = \langle x + 3 \rangle$
how can i do that?




$|F^*| = |F \backslash \{0\} | = 5^2 -1 =24$
...

___


(c) Write $a(y) = (2x+3)y^2 +(2x+1)y +1 \in F [y]$ as a  product of irreducible polynomials.
Hint: $2x + 1 \equiv_{x2+4x+1} 2(x + 3) \in \mathbb{Z}_5[x]$.



deg(polynom) = 1 => irreduzibel


